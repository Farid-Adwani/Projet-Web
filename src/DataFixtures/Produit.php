<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class Produit extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker=Factory::create('en_US');
        for ($i=0 ;$i<1000 ; $i++){
            $produit=new \App\Entity\Produit();
            $produit->setName($faker->unixTime);
            $produit->setPrice($faker->randomDigit);
            $produit->setImg1('/img/img'.$faker->numberBetween(1,3).'.jpg');
            $produit->setImg2('/img/img'.$faker->numberBetween(1,3).'.jpg');
            $produit->setDescription($faker->randomNumber(6));

            $manager->persist($produit);
        }
            $manager->flush();
    }
}
