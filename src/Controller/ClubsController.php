<?php

namespace App\Controller;

use App\Entity\Event;
use App\Entity\Field;
use App\Entity\Product;
use App\Entity\Statistique;
use App\Entity\User;
use App\Repository\compteclubRepository;
use App\Repository\ProductRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\EntityRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use \App\Entity\compteclub;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;


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

        return $this->render('clubPage/index.html.twig', parameters: [
            'comites'=>$comite,
            'club'=>$club,
            'statistiques'=>$statistiques,
            'fields'=>$fields,
            'events'=>$events,
            'products'=>$products

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

        $events=$this->getDoctrine()->getRepository(Event::class)->findAll();
        $clubs=$this->getDoctrine()->getRepository(compteclub::class)->findAll();


        return $this->render('clubs/Account.html.twig', [
            'user'=>$user,
            'events'=>$events,
            'clubs'=>$clubs


        ]);
    }

    #[Route('/contact', name: 'contact')]
    public function contact(): Response {
        return $this->render('clubs/contact.html.twig', []);
    }

    #[Route('/clubs', name: 'clubs')]
    public function clubs(): Response {
        return $this->render('clubs/clubs.html.twig', []);
    }
    #[Route('/events', name: 'events')]
    public function events(): Response {
        return $this->render('clubs/events.html.twig', []);
    }
    #[Route('/products', name: 'products')]
    public function products(): Response {
        return $this->render('clubs/products.html.twig', []);
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



}
