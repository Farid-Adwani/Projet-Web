<?php

namespace App\DataFixtures;


use App\Entity\Event;
use App\Entity\Product;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use app\Entity\compteclub;
class Produit extends Fixture
{
    public function load(ObjectManager $mg)
    {
        $faker=Factory::create();
        for($i=0;$i<100;$i++){
            $objet=new compteclub();
            $objet->setName($faker->name);
            $objet->setImg1("/assets/img/img".$faker->numberBetween(1,3).".jpg");
            $objet->setImg2("/assets/img/img".$faker->numberBetween(1,3).".jpg");
            $objet->setBirthday(date("y-m-d"));
            $objet->setSlogan('0');
            $objet->setPhone('0');
            $objet->setCity('0');
            $objet->setHours('0');
            $objet->setFees('0');
            $objet->setOtherInformation('0');
            $objet->setDescription('0');
            $objet->setAdress('0');
            $objet->setEmail('0');
            $objet->setVid1('0');
            $objet->setVid2('0');
            $objet->setFacebook("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setInstagram("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setTwitter("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setLinkedin("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setYoutube("https://www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setColor("dark");
            $objet->setDomain($faker->domainName);


            $objet2=new Event();
            $objet2->setName($faker->name);
            $objet2->setDescription($faker->company);
            $objet2->setImg1("/assets/img/img".$faker->numberBetween(1,3).".jpg");
            $objet2->setImg2("/assets/img/img".$faker->numberBetween(1,3).".jpg");
            $objet2->setFilter("competetion");

           $objet3=new Product();
           $objet3->setName($faker->name);
            $objet3->setPrix($faker->numberBetween(2112,9856));
            $objet3->setDescription($faker->company);
           $objet3->setImg1("/assets/img/img".$faker->numberBetween(1,3).".jpg");
           $objet3->setImg2("/assets/img/img".$faker->numberBetween(1,3).".jpg");





            $mg->persist($objet);
            $mg->persist($objet2);

            $mg->persist($objet3);
        }
        $mg->flush();
}}
