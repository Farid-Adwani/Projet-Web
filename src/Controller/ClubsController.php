<?php

namespace App\Controller;

use App\Entity\Event;
use App\Entity\Field;
use App\Entity\Product;
use App\Entity\Publication;
use App\Entity\Statistique;
use App\Entity\User;
use App\Repository\compteclubRepository;
use App\Repository\EventRepository;
use App\Repository\ProductRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\EntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use \App\Entity\compteclub;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class ClubsController extends AbstractController
{

    #[Route('/', name: 'landing')]
    public function index(): Response
    {
        $products=$this->getDoctrine()->getRepository(Product::class)->findAll();
        $clubs=$this->getDoctrine()->getRepository(compteclub::class)->findAll();
        $events=$this->getDoctrine()->getRepository(Event::class)->findAll();

        $clubpur=[];
        shuffle($clubs);
        shuffle($products);
        shuffle($events);
        $productSection=array_merge($products);
        $eventSection=array_merge($events);
        $clubSection=array_merge($clubs);;

        $eventSection=array_splice($eventSection,0,9);
        $clubSection= array_splice($clubSection,0,7);
        $productSection=array_splice($productSection,0,4);
        $indices=[];
        $indices=range(0,5);
        $indices=array_merge($indices,$indices);
        shuffle($indices);

        foreach ($indices as $indice){
            array_push($clubpur,$clubs[$indice]);
        }

        return $this->render('clubs/index.html.twig', [
            'eventSection'=>$eventSection,
            'productSection'=>$productSection,
            'clubSection'=>$clubSection,
            'clubsgame'=>$clubpur,
            'produits'=>$products,
            'clubs'=>$clubs,
            'events'=>$events
        ]);
    }

    /**
     * @Route("/club/{clubname?Securinets}",name="club")
     */
    public function club($clubname, EntityManagerInterface $manager): Response
    {
        $club = $this->getDoctrine()->getRepository(compteclub::class)->findOneBy(['name' => $clubname]);
        $statistiques = $this->getDoctrine()->getRepository(Statistique::class)->findAll();
        $fields = $this->getDoctrine()->getRepository(Field::class)->findAll();
        $events = $this->getDoctrine()->getRepository(Event::class)->findAll();
        $products = $this->getDoctrine()->getRepository(Product::class)->findAll();
        $comite=$this->getDoctrine()->getRepository(User::class)->findAll();
        $user=$this->getUser();
        $clubs=$user-> getClubs();
        $state='unfollowed';
        foreach ($clubs as $cc){
            if ($cc->getName()== $club->getName()) {
                $state='followed';
                break;
            }
        }
        return $this->render('clubPage/index.html.twig', parameters: [
            'comites'=>$comite,
            'club'=>$club,
            'statistiques'=>$statistiques,
            'fields'=>$fields,
            'events'=>$events,
            'products'=>$products,
            'state'=>$state

        ]);
    }

    #[Route('/home', name: 'home')]
    public function home(): Response {
      return  $this->redirectToRoute('landing');
    }

    #[Route('/account', name: 'account')]
    public function account(): Response {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');
        $user = $this->getUser();
        $events=$user->getEvents();
        $clubs=$user->getClubs();

    //    $events=$this->getDoctrine()->getRepository(Event::class)->findAll();
       // $clubs=$this->getDoctrine()->getRepository(compteclub::class)->findAll();


        return $this->render('clubs/Account.html.twig', [
            'user'=>$user,
            'events'=>$events,
            'clubs'=>$clubs


        ]);
    }
    #[Route('update_account', name: 'update_account')]
    public function update_account(EntityManagerInterface $manager): Response {
        $user = $this->getUser();
        $user->setFullname($_POST['fullname']);
        $user->setPhone($_POST['phone']);
        $user->setAddress($_POST['address']);
        $user->setTwitter($_POST['twitter']);
        $user->setFacebook($_POST['facebook']);
        $user->setClass($_POST['class']);
       if (isset($_FILES['file'])&&$_FILES['file']['name']) {
            $newname=uniqid().$_FILES['file']['name'];
            $path='assets/img/'.$newname;
            move_uploaded_file($_FILES['file']['tmp_name'],$path);
            $user->setImage($path);
        }
        $manager->persist($user);
        $manager->flush();
        return $this->redirectToRoute('account');
    }
    #[Route('update_logins', name: 'update_logins')]
    public function update_login(EntityManagerInterface $manager,UserPasswordEncoderInterface $encoder): Response{
        $user=$this->getUser();
        $user->setPassword($encoder->encodePassword($user, $_POST['password']));
        $manager->persist($user);
        $manager->flush();
        return $this->redirectToRoute('account');
    }

    #[Route('/contact', name: 'contact')]
    public function contact(): Response {
        return $this->render('clubs/contact.html.twig', []);
    }

    #[Route('/clubs', name: 'clubs')]
    public function clubs(compteclubRepository $repo,Request  $request): Response
    {

        $clubs=$repo->findAll();


        return $this->render('clubs/clubs.html.twig', [
            'clubs' => $clubs,

        ]);
    }
 
    #[Route('/publications', name: 'newsfeed')]
    public function publications(compteclubRepository $repo): Response {
        $feeds=[];
        $user= new User();
        $user=$this->getUser();
        $club=new compteclub();
        $club->getPublications();
        $clubs=$user->getClubs();

      //  dd($clubs);
        foreach ($clubs as $club){

            $news=$club->getPublications()->getValues();
               $feeds=array_merge($feeds,$news);
        }

        return $this->render('clubs/newsfeed.html.twig', [
            'newsfeed'=>$feeds
        ]);
    }



    #[Route('/post', name: 'post')]
    public function post(EntityManagerInterface $manager, Request $request): Response {
        $this->denyAccessUnlessGranted('ROLE_CLUB');
        $user=$this->getUser();
        $club=$this->getDoctrine()->getRepository(compteclub::class)->findOneBy(['name'=>$user->getClubname()]);
        $pub=new Publication();
        $form=$this->createFormBuilder($pub)->add('title', TextType::class, ['attr' => ['placeholder'=>'title', 'class'=> 'form-control']])
            ->add('content', TextareaType::class, ['attr' => ['placeholder'=>'content', 'class'=> 'form-control']])
            ->add('image', TextType::class, ['attr' => ['placeholder'=>'image', 'class'=> 'form-control']])
            ->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted()  && $form->isValid()) {
            $pub->setPostedAt(new \DateTime());
            $pub->setClub($club);
            $manager->persist($pub);
            $manager->flush();
            return $this->redirectToRoute('home');
        }
        return $this->render('clubs/post.html.twig', ['formPost'=> $form->createView()]);
    }

    #[Route('/events', name: 'events')]
    public function events(EventRepository $repo): Response {
        $events=$repo->findAll();
        return $this->render('clubs/events.html.twig', [
            'events' => $events

        ]);
    }


    #[Route('/myclub', name: 'myclub')]
    public function myclub() {
        $this->denyAccessUnlessGranted('ROLE_CLUB');
        $user = $this->getUser();
        return $this->redirectToRoute('club', ['clubname' => $user->getClubname()]);
    }
    #[Route('/products', name: 'products')]
    public function products(ProductRepository $repo): Response {
        $products=$repo->findAll();
        return $this->render('clubs/products.html.twig', [
            'products' => $products

        ]);
    }
    #[Route('/members', name: 'members')]
    public function members(ProductRepository $repo): Response {
        $this->denyAccessUnlessGranted('ROLE_CLUB');
        return $this->render('clubs/members.html.twig', []);
    }

    #[Route('/clubinfo', name: 'clubinfo')]
    public function clubinfo(EntityManagerInterface $manager, Request $request): Response {
        $this->denyAccessUnlessGranted('ROLE_CLUB');
        $user=$this->getUser();
        $club=$this->getDoctrine()->getRepository(compteclub::class)->findOneBy(['name'=>$user->getClubname()]);
        $form=$this->createFormBuilder($club)->add('name', TextType::class, ['attr' => ['placeholder'=>'name', 'class'=> 'form-control']])
            ->add('img1', TextType::class, ['attr' => ['placeholder'=>'first image URL', 'class'=> 'form-control']])
            ->add('Img2', TextType::class, ['attr' => ['placeholder'=>'second image URL', 'class'=> 'form-control']])
            ->add('slogan', TextType::class, ['attr' => ['placeholder'=>'slogan', 'class'=> 'form-control']])
            ->add('description', TextType::class, ['attr' => ['placeholder'=>'description', 'class'=> 'form-control']])
            ->add('phone', TextType::class, ['attr' => ['placeholder'=>'phone', 'class'=> 'form-control']])
            ->add('city', TextType::class, ['attr' => ['placeholder'=>'city', 'class'=> 'form-control']])
            ->add('hours', TextType::class, ['attr' => ['placeholder'=>'hours', 'class'=> 'form-control']])
            ->add('fees', TextType::class, ['attr' => ['placeholder'=>'fees', 'class'=> 'form-control']])
            ->add('otherInformation', TextType::class, ['attr' => ['placeholder'=>'other information', 'class'=> 'form-control']])
            ->add('adress', TextType::class, ['attr' => ['placeholder'=>'adress', 'class'=> 'form-control']])
            ->add('email', TextType::class, ['attr' => ['placeholder'=>'email', 'class'=> 'form-control']])
            ->add('birthday', TextType::class, ['attr' => ['placeholder'=>'birthday', 'class'=> 'form-control']])
            ->add('vid1', TextType::class, ['attr' => ['placeholder'=>'vid1', 'class'=> 'form-control']])
            ->add('vid2', TextType::class, ['attr' => ['placeholder'=>'vid2', 'class'=> 'form-control']])
            ->add('email', TextType::class, ['attr' => ['placeholder'=>'email', 'class'=> 'form-control']])
            ->add('facebook', TextType::class, ['attr' => ['placeholder'=>'facebook', 'class'=> 'form-control']])
            ->add('twitter', TextType::class, ['attr' => ['placeholder'=>'twitter', 'class'=> 'form-control']])
            ->add('instagram', TextType::class, ['attr' => ['placeholder'=>'instagram', 'class'=> 'form-control']])
            ->add('linkedin', TextType::class, ['attr' => ['placeholder'=>'linkedin', 'class'=> 'form-control']])
            ->add('youtube', TextType::class, ['attr' => ['placeholder'=>'youtube', 'class'=> 'form-control']])
            ->add('domain', TextType::class, ['attr' => ['placeholder'=>'domain', 'class'=> 'form-control']])
            ->add('color', TextType::class, ['attr' => ['placeholder'=>'color', 'class'=> 'form-control']])
            ->getForm();
            $form->handleRequest($request);
            if($form->isSubmitted()  && $form->isValid()) {
                $manager->persist($club);
                $manager->flush();
                return $this->redirectToRoute('clubs');
            }
        return $this->render('clubs/clubinfo.html.twig', ['formClub' => $form->createView()]);
    }



    #[Route('/addevent', name: 'add-event')]
    public function addevent(Request $request, EntityManagerInterface $manager): Response {
        $this->denyAccessUnlessGranted('ROLE_CLUB');
        $event=new Event();
        $form=$this->createFormBuilder($event)->add('name', TextType::class, ['attr' => ['placeholder'=>'name', 'class'=> 'form-control']])
            ->add('img1', TextType::class, ['attr' => ['placeholder'=>'first image URL', 'class'=> 'form-control']])
            ->add('img2', TextType::class, ['attr' => ['placeholder'=>'second image URL', 'class'=> 'form-control']])
            ->add('description', TextType::class, ['attr' => ['placeholder'=>'description', 'class'=> 'form-control']])
            ->add('filter', TextType::class, ['attr' => ['placeholder'=>'filter', 'class'=> 'form-control']])
            ->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted()  && $form->isValid()) {
            $event->setClub(null);
            $manager->persist($event);
            $manager->flush();
            return $this->redirectToRoute('events');
        }
        return $this->render('clubs/addEvent.html.twig', ['formEvent' => $form->createView()]);
    }

    #[Route('/addproduct', name: 'add-product')]
    public function addproduct(Request $request, EntityManagerInterface $manager): Response {
        $this->denyAccessUnlessGranted('ROLE_CLUB');
        $product=new Product();
        $form=$this->createFormBuilder($product)->add('name', TextType::class, ['attr' => ['placeholder'=>'name', 'class'=> 'form-control']])
            ->add('img1', FileType::class, ['attr' => ['placeholder'=>'first image URL', 'class'=> 'form-control']])
            ->add('img2', FileType::class, ['attr' => ['placeholder'=>'second image URL', 'class'=> 'form-control']])
            ->add('prix', TextType::class, ['attr' => ['placeholder'=>'prix', 'class'=> 'form-control']])
            ->add('description', TextType::class, ['attr' => ['placeholder'=>'description', 'class'=> 'form-control']])
            ->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted()  && $form->isValid()) {
            $product->setClub(null);
            $manager->persist($product);
            $manager->flush();
            return $this->redirectToRoute('products');
        }
        return $this->render('clubs/addProduct.html.twig', ['formProduct' => $form->createView()]);
    }
#[Route('/followings/{clubname}', name: 'followings')]
public function followings($clubname, EntityManagerInterface $manager){
$user=$this->getUser();
$club=$this->getDoctrine()->getRepository(compteclub::class)->findOneBy(['name'=>$clubname]);
$user->addClub($club);
$manager->persist($user);
$manager->flush();
return $this->redirectToRoute('club',['clubname'=>$clubname]);
    }
    #[Route('/unfollowings/{clubname}', name: 'unfollowings')]
    public function unfollowings($clubname, EntityManagerInterface $manager){
        $user=$this->getUser();
        $club=$this->getDoctrine()->getRepository(compteclub::class)->findOneBy(['name'=>$clubname]);
        $user->removeClub($club);
        $manager->persist($user);
        $manager->flush();
        return $this->redirectToRoute('club',['clubname'=>$clubname]);
    }

}
