<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class ClubsController extends AbstractController
{


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
        return $this->redirectToRoute('home');
    }

    #[Route('/home', name: 'home')]
    public function home(): Response {
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
