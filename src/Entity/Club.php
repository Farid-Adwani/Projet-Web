<?php

namespace App\Entity;

use App\Repository\ClubRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ClubRepository::class)
 */
class Club
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $Name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Domain;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Img1;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->Name;
    }

    public function setName(string $Name): self
    {
        $this->Name = $Name;

        return $this;
    }

    public function getDomain(): ?string
    {
        return $this->Domain;
    }

    public function setDomain(string $Domain): self
    {
        $this->Domain = $Domain;

        return $this;
    }

    public function getImg1(): ?string
    {
        return $this->Img1;
    }

    public function setImg1(string $Img1): self
    {
        $this->Img1 = $Img1;

        return $this;
    }
}
