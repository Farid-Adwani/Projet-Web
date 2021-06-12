<?php

namespace App\DataFixtures;


use App\Entity\Event;
use App\Entity\Product;
use App\Entity\User;
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
        for($i=0;$i<20;$i++){
         /*   $objet=new App\Entity\compteclub();
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
            $objet->setFacebook("https=>//www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setInstagram("https=>//www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setTwitter("https=>//www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setLinkedin("https=>//www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setYoutube("https=>//www.youtube.com/watch?v=Ap-SZHJF8wU");
            $objet->setColor("dark");
            $objet->setDomain($faker->domainName);
*/

            $objet2=new Event();
            $objet2->setName($faker->name);
            $objet2->setDescription($faker->company);
            $objet2->setImg1("/assets/img/img".$faker->numberBetween(1,3).".jpg");
            $objet2->setImg2("/assets/img/img".$faker->numberBetween(1,3).".jpg");

            $objet2->setFilter("training");

           $objet3=new Product();
           $objet3->setName($faker->name);
            $objet3->setPrix($faker->numberBetween(2112,9856));
            $objet3->setDescription($faker->company);
           $objet3->setImg1("/assets/img/img".$faker->numberBetween(1,3).".jpg");
           $objet3->setImg2("/assets/img/img".$faker->numberBetween(1,3).".jpg");





//            $mg->persist($objet);
            $mg->persist($objet2);

//            $mg->persist($objet3);




        }
        /*  $Staff=[
                    ['nom'=>'MED YASSINE KOUBAA','description'=>' An ambitious and a hard worker
            engineering student who is
            around for the 4th year as
            member in the club.
            He is an all-rounder and the one
            to go to for help. He loves coming
            up with new ideas and learning
            new tricks and he is always open for new technologies','poste'=>'Technical Vice President','img'=>"/assets/img/Clubs/Aerobotix/board/vpt.png"],
                    ['nom'=>'YASSMINE BEN AMEUR','description'=>'A wise and hospitable
                            engineer. She has a genius
                            for solving problems.
                            Her love to technological
                            innovation and robotics
                            in particular led her to join
                            AeRobotix INSAT or
                            "the paradise" and "the family"
                            as she calls it.','poste'=>'President','img'=>"/assets/img/Clubs/Aerobotix/board/prez.png"],
                    ['nom'=>'WAFA ABID','description'=>'An ambitious and enthusiastic
                            engineering student. She is
                            passionate about robotics
                            and embedded systems.
                            Her experience and regulation
                            made her a good fit in her new
                            position.        ','poste'=>'Administrative Vice President','img'=>"/assets/img/Clubs/Aerobotix/board/vpa.png"],
                    ['nom'=>'AMIRA BEZINE','description'=>' A software engineering student,
                            an enthusiastic and innovative
                            mind. Besides her passion for
                            robotics, she has a good experience
                            in the media and a great talent
                            for creating and designing.
                            She is proud of being one of
                            Aerobotix family members . ','poste'=>'Media','img'=>"/assets/img/Clubs/Aerobotix/board/media.png"],
                    ['nom'=>'NOURCHENE BARGUAOUI','description'=>"A brave and sociable engineer.
                            She is crazy enough to think
                            she can change the world.
                            Joining the Aerobotix's family
                was one of the best choices
                she has made.
                Her strategy was to focus on
                the members and to build a very
                strong connection with them. ",'poste'=>'Human Ressource','img'=>"/assets/img/Clubs/Aerobotix/board/rh.png"],
                    ['nom'=>'ALA EDDINE KRAIEM','description'=>"A adventurous engineering student
                            who has been an eurobot team
                            member for 2 years.
                            He's an electronics expert and a
                        dreamer. He always comes up with
                        crazy ideas and that's what makes
                            him special. When it comes to
                            projects, he never messes around. ",'poste'=>'Exposition','img'=>"/assets/img/Clubs/Aerobotix/board/expo.png"],
                    ['nom'=>'HAZAR BOUGHANMI','description'=>'An ambitious and driven
                            engineer who always thrives
                            on challenges and constantly
                            set goals for herself.
                            She has always something to strive
                            toward. She finds this pressure
                            inspiring and a great motivator
                            for the rest of the members.','poste'=>'Drone Manager','img'=>"/assets/img/Clubs/Aerobotix/board/drone.png"],
                    ['nom'=>'AWNI MEJRI','description'=>' An ambitious and systematic
                            industrial automation engineer
                            who has a great passion for
                            learning and discovering.
                            He loves working on robotics
                            as well as developing himself. ','poste'=>'Material Manager','img'=>"/assets/img/Clubs/Aerobotix/board/mater.png"],
                    ['nom'=>'AZIZ BEN GANDIA','description'=>'A second year chemersty student
                            who is so passionate about
                            robotics. He has a good yet
                            strange way of communicating.
                            He is great at convincing
                            and debating. Being a member
                            of Aerobotix family was one
                            of his best decisions.  ','poste'=>'Sponsoring','img'=>"/assets/img/Clubs/Aerobotix/board/sponso.png"],
                    ['nom'=>'MOHAMED LOUKIL','description'=>"A driven, aspiring engineer
                            who has been tracking
                            planes with a laptop's
                        radar from his house's
                            roof since his childhood.
                            His dream is joining one
                            of the most influential
                            aeronautics and space
                            companies around the world. ",'poste'=>'Aeromodelisme Manager','img'=>"/assets/img/Clubs/Aerobotix/board/aeromod.png"],
                    ['nom'=>'MAROUENE KAANICHE','description'=>"A persevering and commited
                            engineer. He's full of spirit
                and energy and will always
                preform at his best.
                He he seeks to help our newcomers
                land their first steps towards
                a brightful career as robotics
                enthusiasts .",'poste'=>'Training Manager','img'=>"/assets/img/Clubs/Aerobotix/board/formation.png"]
                ];
            foreach ($Staff as $value){
                $a=new User();
                $a->setDescription($value['description']);
                $a->setAddress(" adressaaaa");
                $a->setClass("gl/rt..");
                $a->setEmail(" ");
                $a->setFacebook(" ");
                $a->setTwitter(" ");
                $a->setInstagram(" ");
                $a->setPhone(22222222);
                $a->setRole($value['poste']);
                $a->setImage($value['img']);
                $a->setFullname($value['nom']);
                $mg->persist($a);

            }*/
        $mg->flush();
}}
