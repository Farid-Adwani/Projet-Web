<?php

namespace App\Controller;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use \App\Entity\compteclub;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class ClubsController extends AbstractController
{

    /**
     *@Route("/addclub",name="addclub")
     */
    function addclub(EntityManagerInterface $mg): Response{

        $club=new compteclub();
        $club->setName('0');
        $club->setImg1('0');
        $club->setImg2('0');
        $club->setBirthday(date("y-m-d"));
        $club->setSlogan('0');
                    $club->setPhone('0');
                    $club->setCity('0');
                    $club->setHours('0');
                    $club->setFees('0');
                    $club->setOtherInformation('0');
                    $club->setDescription('0');
                    $club->setAdress('0');
                    $club->setEmail('0');
                    $club->setVid1('0');
                    $club->setVid2('0');
                    $club->setFacebook("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
                    $club->setInstagram("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
                    $club->setTwitter("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
                    $club->setLinkedin("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
                    $club->setYoutube("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
                    $mg->persist($club);
                   $mg->flush();
        return $this->render('clubs/vide.html.twig',[ 'title'=>"°VIDE°" ]);
    }



    /**
    *@Route("/vide",name="vide")
     */
    function vide( ): Response{
        return $this->render('clubs/vide.html.twig',[ 'title'=>"°VIDE°" ]);
    }


    /**
     * @Route("/test/{fullname<^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$>?foulen}/{Age<\d+>?18}/{Section?mpi}",name="test")
     */
    function test( $fullname,$Age,$Section, SessionInterface $session): Response{
        if(!$session->has('user')){
            $this->addFlash('message',"Hello back Mr $fullname");
            $session->set('user',$fullname);
        }
        dump($session);
        return $this->render('arbtx/3.twig',[ 'fullname'=>$fullname, 'age'=>$Age,'section'=>$Section ]);
    }


    #[Route('/', name: 'landing')]
    public function index(): Response
    {
        return $this->redirectToRoute('entring_game');
    }

    #[Route('/home', name: 'home')]
    public function home(): Response {
      return  $this->redirectToRoute('entring_game');
        return $this->render('clubs/index.html.twig', []);
    }

    #[Route('/account', name: 'account')]
    public function account(): Response {
        return $this->render('clubs/Account.html.twig', []);
    }

    #[Route('/contact', name: 'contact')]
    public function contact(): Response {
        return $this->render('clubs/contact.html.twig', []);
    }

    #[Route('/login', name: 'login')]
    public function login(): Response {
        return $this->render('clubs/login.html.twig', []);
    }
    #[Route('/signup', name: 'signup')]
    public function signup(): Response {
        return $this->render('clubs/signup.html.twig', []);
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


}
