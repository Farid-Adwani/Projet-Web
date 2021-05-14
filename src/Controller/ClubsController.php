<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ClubsController extends AbstractController
{
    #[Route('/', name: 'landing')]
    public function index(): Response
    {
        return $this->render('clubs/index.html.twig', [
            'controller_name' => 'ClubsController',
        ]);
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
    #[Route('/home', name: 'home')]
    public function home(): Response {
        return $this->render('clubs/home.html.twig', []);
    }

}
