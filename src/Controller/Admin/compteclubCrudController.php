<?php

namespace App\Controller\Admin;

use App\Entity\compteclub;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class compteclubCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return compteclub::class;
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
    */
}
