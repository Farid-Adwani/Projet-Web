<?php

namespace App\Controller;

use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class SecurityController extends AbstractController
{
    #[Route('/login', name: 'login')]
    public function login(): Response {
        return $this->render('security/login.html.twig', []);
    }
    #[Route('/logout', name: 'logout')]
    public function logout(): Response {
    }
    #[Route('/signup', name: 'signup')]
    public function signup(Request $request, EntityManagerInterface $manager, UserPasswordEncoderInterface $encoder): Response {
        $user=new User();
        $form=$this->createFormBuilder($user)->add('fullname', TextType::class, ['attr' => ['placeholder'=>'fullname', 'class'=> 'form-control']])
            ->add('email', TextType::class, ['attr' => ['placeholder'=>'email', 'class'=> 'form-control']])
            ->add('phone', TextType::class, ['attr' => ['placeholder'=>'phone', 'class'=> 'form-control']])
            ->add('address', TextType::class, ['attr' => ['placeholder'=>'address', 'class'=> 'form-control']])
            ->add('password', PasswordType::class, ['attr' => ['placeholder'=>'password', 'class'=> 'form-control']])
            ->add('confirmPassword', PasswordType::class, ['attr' => ['placeholder'=>'confirm password', 'class'=> 'form-control']])
            ->getForm();
        /*
            ->add('twitter', TextType::class, ['attr' => ['placeholder'=>'twitter', 'class'=> 'form-control']])
            ->add('instagram', TextType::class, ['attr' => ['placeholder'=>'instagram', 'class'=> 'form-control']])
            ->add('facebook', TextType::class, ['attr' => ['placeholder'=>'facebook', 'class'=> 'form-control']])
            ->add('class', TextType::class, ['attr' => ['placeholder'=>'class', 'class'=> 'form-control']])
            ->add('description' , TextType::class, ['attr' => ['placeholder'=>'description', 'class'=> 'form-control']]) */

        $form->handleRequest($request);
        if($form->isSubmitted()  && $form->isValid()) {
            $hash = $encoder->encodePassword($user, $user->getPassword());
            $user->setPassword($hash);
            $user->setRoles(json_encode(['ROLE_USER']));
            $user->setTwitter("www.twitter.com");
            $user->setInstagram("www.instagram.com");
            $user->setFacebook("www.facebook.com");

            $manager->persist($user);
            $manager->flush();
            return $this->redirectToRoute('login');
        }
        return $this->render('security/signup.html.twig', ['formUser' => $form->createView()]);
    }
}
