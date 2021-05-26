<?php

namespace App\Entity;

use App\Repository\ProduitRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ProduitRepository::class)
 */
class Produit
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Name;

   
    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $Price;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Img1;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Img2;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $Description;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $Filter;







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

    public function getDescription(): ?string
    {
        return $this->Description;
    }

    public function setDescription(string $Description): self
    {
        $this->Description = $Description;

        return $this;
    }

    public function getPrice(): ?string
    {
        return $this->Price;
    }

    public function setPrice(string $Price): self
    {
        $this->Price = $Price;

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

    public function getImg2(): ?string
    {
        return $this->Img2;
    }

    public function setImg2(string $Img2): self
    {
        $this->Img2 = $Img2;

        return $this;
    }

    public function getFilter(): ?string
    {
        return $this->Filter;
    }

    public function setFilter(string $Filter): self
    {
        $this->Filter = $Filter;

        return $this;
    }


}
