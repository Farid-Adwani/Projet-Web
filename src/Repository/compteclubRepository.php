<?php

namespace App\Repository;

use App\Entity\compteclub;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method compteclub|null find($id, $lockMode = null, $lockVersion = null)
 * @method compteclub|null findOneBy(array $criteria, array $orderBy = null)
 * @method compteclub[]    findAll()
 * @method compteclub[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class compteclubRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, compteclub::class);
    }

    // /**
    //  * @return compteclub[] Returns an array of compteclub objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?compteclub
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
