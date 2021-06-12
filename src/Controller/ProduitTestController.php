<?php

namespace App\Controller;

use App\Entity\Product;
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
        $produit=new Product();
        $produit->setName($name);
        $produit->setPrice($prix);
        $produit->setImg1('/assets/img/img2.jpg');
        $produit->setImg2('/assets/img/img2.jpg');
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
        $total=$this->getDoctrine()->getRepository(Product::class)->findAll();
        $total=count($total);
        $pages=ceil($total/$number) ;
        $Produits=$this->getDoctrine()->getRepository(Product::class)->findBy([],['prix'=>'desc'],$number,($page-1)*$number);
        $minpage=max(1,$page-8);
        $maxpage=min($pages,$page+8);
        if($maxpage==$pages && ($maxpage-$minpage)<15 ){$minpage=max(1,$maxpage-16);}
        if($minpage==1 && ($maxpage-$minpage)<15){$maxpage=min($pages,$minpage+16);}
        if(($maxpage-$minpage)<16)  {$minpage=1; $maxpage=$pages;}

        return $this->render('produit_test/index.html.twig', [
            'products' => $Produits,
            'etat'=>'all affiché',
            'produit'=>null,
            'total'=>$total,
            'minpage'=>$minpage,
            'maxpage'=>$maxpage,
            'pages'=>$pages

        ]);
    }
}
