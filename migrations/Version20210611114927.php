<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210611114927 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event ADD club_id INT NOT NULL');
        $this->addSql('ALTER TABLE event ADD CONSTRAINT FK_3BAE0AA761190A32 FOREIGN KEY (club_id) REFERENCES compteclub (id)');
        $this->addSql('CREATE INDEX IDX_3BAE0AA761190A32 ON event (club_id)');
        $this->addSql('ALTER TABLE field ADD club_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE field ADD CONSTRAINT FK_5BF5455861190A32 FOREIGN KEY (club_id) REFERENCES compteclub (id)');
        $this->addSql('CREATE INDEX IDX_5BF5455861190A32 ON field (club_id)');
        $this->addSql('ALTER TABLE product ADD club_id INT NOT NULL');
        $this->addSql('ALTER TABLE product ADD CONSTRAINT FK_D34A04AD61190A32 FOREIGN KEY (club_id) REFERENCES compteclub (id)');
        $this->addSql('CREATE INDEX IDX_D34A04AD61190A32 ON product (club_id)');
        $this->addSql('ALTER TABLE statistique ADD club_id INT NOT NULL');
        $this->addSql('ALTER TABLE statistique ADD CONSTRAINT FK_73A038AD61190A32 FOREIGN KEY (club_id) REFERENCES compteclub (id)');
        $this->addSql('CREATE INDEX IDX_73A038AD61190A32 ON statistique (club_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event DROP FOREIGN KEY FK_3BAE0AA761190A32');
        $this->addSql('DROP INDEX IDX_3BAE0AA761190A32 ON event');
        $this->addSql('ALTER TABLE event DROP club_id');
        $this->addSql('ALTER TABLE field DROP FOREIGN KEY FK_5BF5455861190A32');
        $this->addSql('DROP INDEX IDX_5BF5455861190A32 ON field');
        $this->addSql('ALTER TABLE field DROP club_id');
        $this->addSql('ALTER TABLE product DROP FOREIGN KEY FK_D34A04AD61190A32');
        $this->addSql('DROP INDEX IDX_D34A04AD61190A32 ON product');
        $this->addSql('ALTER TABLE product DROP club_id');
        $this->addSql('ALTER TABLE statistique DROP FOREIGN KEY FK_73A038AD61190A32');
        $this->addSql('DROP INDEX IDX_73A038AD61190A32 ON statistique');
        $this->addSql('ALTER TABLE statistique DROP club_id');
    }
}
