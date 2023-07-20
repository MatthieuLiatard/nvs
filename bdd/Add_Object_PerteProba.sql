ALTER TABLE `objet` ADD `Perte_Proba` SMALLINT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'valeur entiere de 0 (jamais perdue) a 100 (perdue avec certitude), representant la probabilite de perdre cet objet en cas de rip' AFTER `deposable`; 
ALTER TABLE `objet` CHANGE `type_objet` `type_objet` VARCHAR(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N' COMMENT 'T: ticket, E: equipable, N: Consommable, S: soin, SSP: soin special, RP: objet RP'; 

