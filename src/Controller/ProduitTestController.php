<?php

namespace App\Controller;

use App\Entity\Produit;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProduitTestController extends AbstractController
{
    #[Route('/add/{name}/{prix}', name: 'add')]
    public function add($name,$prix,EntityManagerInterface $mg): Response
    {
        $produit=new Produit();
        $produit->setName($name);
        $produit->setPrice($prix);
        $produit->setImg1('/img/img2.jpg');
        $produit->setImg2('/img/img2.jpg');
        $mg->persist($produit);
        $mg->flush();
        $Produits=$this->getDoctrine()->getRepository(Produit::class)->findAll();

        return $this->render('produit_test/index.html.twig', [
            'etat'=>'Ajouté',
            'Produits' => $Produits,
            'produit'=>$produit
        ]);
    }

    #[Route('/update/{produit}/{name}/{prix}', name: 'update')]
    public function update(Produit $produit=null,$name,$prix,EntityManagerInterface $mg): Response
    {
        if ($produit!=null) {
            $produit->setName($name);
            $produit->setPrice($prix);
            $mg->persist($produit);
            $mg->flush();
        }
        $Produits=$this->getDoctrine()->getRepository(Produit::class)->findAll();

        return $this->render('produit_test/index.html.twig', [
            'Produits' => $Produits,
            'etat'=>'le nouveau produit ',
            'produit'=>$produit
            ]);
    }

    #[Route('/delete/{produit}', name: 'delete')]
    public function delete(Produit $produit=null,EntityManagerInterface $mg): Response
    {
        if ($produit!=null) {
            $mg->remove($produit);
            $mg->flush();
        }

        $Produits=$this->getDoctrine()->getRepository(Produit::class)->findAll();

        return $this->render('produit_test/index.html.twig', [
            'Produits' => $Produits,
            'etat'=>'Supprimé',
            'produit'=>$produit
        ]);
    }

    #[Route('/all/{page<\d+>?1}/{number<\d+>?5}', name: 'all')]
    public function all($page,$number): Response
    {
        $total=$this->getDoctrine()->getRepository(Produit::class)->findAll();
        $total=count($total);

        $Produits=$this->getDoctrine()->getRepository(Produit::class)->findBy([],['Price'=>'desc'],$number,($page-1)*$number);

        return $this->render('produit_test/index.html.twig', [
            'Produits' => $Produits,
            'etat'=>'all affiché',
            'produit'=>null,
            'total'=>$total
        ]);
    }
}
