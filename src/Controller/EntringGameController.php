<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EntringGameController extends AbstractController
{
    #[Route('/game', name:'entring_game')]
    public function index(): Response
    {

        $clubs=array( ['name'=>'Developer Student Club INSAT','description'=>'Developer Student Clubs train thousands of student developers globally and work with their communities to solve real-life problems.
','domain'=>'Computer Sciences','color'=>'bg-gradient-peacock-blue-crome-yellow','img'=>"/img/Clubs/Developer.png"],
                ['name'=>'AeRobotiX INSAT','description'=>' The AeRobotiX club is a scientific club which operates in the realization of robotic and automated applications.
','domain'=>'Robotics and Aeromodelling','color'=>'bg-transparent-gradient-light-red-orange','img'=>"/img/Clubs/aerobotix.jpg"],
                ['name'=>'INSAT Android Club','description'=>'IAC is the first Android development club in Tunisia, formed by young Insatians experienced in this field.
','domain'=>'Computer Sciences','color'=>'bg-gradient-yellowish-green-turquoise','img'=>"/img/Clubs/Android.jpg"],
                ['name'=>'AutoClub INSAT','description'=>'AutoClub INSAT is a university club whose goal is the organization of events and training related to the automotive world.
','domain'=>'automative field','color'=>'bg-gradient-light-purple-light-red','img'=>"/img/Clubs/autoclub.jpg"],
                ['name'=>'IEEE Student Branch','description'=>'IEEE INSAT sb consists of students from all degree courses=> biology, chemistry, automation, telecommunication, software engineering, and instrumentation.
','domain'=>'biology, chemistry, automation, telecommunication, software engineering, and instrumentation','color'=>'bg-transparent-gradient-sky-blue-pink','img'=>"/img/Clubs/ieee.jpg"],
                ['name'=>'INSAT Maintenance Club','description'=>'the INSAT Maintenance Club (CIM) aims to complete the training of future engineers through industrial visits, professional training and applications in the field of automation
','domain'=>'Automation and Industry','color'=>'bg-gradient-tussock-greenish-slate','img'=>"/img/Clubs/Maintenance.jpg"],
                ['name'=>'INSAT Press','description'=>'The first university press club created in Tunisia. This page is dedicated for all INSATian students, and any university student more generally, in order to report the latest events to come or have taken place,
','domain'=>'Press','color'=>'bg-gradient-peacock-blue-crome-yellow','img'=>"/img/Clubs/Press.png"],
                ['name'=>'Securinets','description'=>'SECURINETS IS THE FIRST TUNISIAN ASSOCIATION TO BASE ALL OF ITS ACTIVITIES ON COMPUTER SECURITY.
','domain'=>'Computer Security','color'=>'bg-transparent-gradient-light-red-orange','img'=>"/img/Clubs/Securinets.jpg"],
                ['name'=>'Theatro INSAT','description'=>'Cultural and event club at INSAT. The artistic and cultural domain interests us and specifically the theatrical which touches everyone.
','domain'=>'Theatre','color'=>'bg-gradient-light-purple-light-red','img'=>"/img/Clubs/Theatro.jpg"],
                ['name'=>'Anim INSAT','description'=>'Anim INSAT provides the best integration for newcomers and the most jovial atmosphere to endure the stress of studying.
','domain'=>'Animation','color'=>'bg-gradient-purple-magenta','img'=>"/img/Clubs/anim.jpg"],
                ['name'=>'Symbio INSAT','description'=>'Symbio is a biology club at INSAT. We offer industrial and ecological tours, but above all, we give students the chance to have training. We also have an event component.
','domain'=>'Biology','color'=>'bg-gradient-magenta-orange-2','img'=>"/img/Clubs/symbio.png"],
                ['name'=>'Ciné-Radio','description'=>'Cultural and event club. We are working to give all Tunisian students the chance to be heard and to display their talents.','domain'=>'Culture','color'=>'bg-transparent-gradient-smoky-black','img'=>"/img/Clubs/cineradio.jpg"]

    );
        $clubpur=[];
        $indices=range(0,5);
        $indices=array_merge($indices,$indices);
        shuffle($indices);
        shuffle($indices);
        foreach ($indices as $indice){
            array_push($clubpur,$clubs[$indice]);
        }




            return $this->render('clubs/index.html.twig', [
            'clubs'=>$clubpur
        ]);
}
}
