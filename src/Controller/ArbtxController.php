<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArbtxController extends AbstractController
{
    /**
     * @Route("/club/{clubname?aerobotix}",name="club")
     */
    public function index($clubname, Request $request): Response
    {
        dump($request);

        return $this->render('arbtx/index.html.twig', parameters: [
                'clubname'=>$clubname
        ]);
    }
}
