<?php
// Tours de 46h
define ("DUREE_TOUR", 46*60*60);
// Antizerk de 10h
define ("DUREE_ANTI_ZERK_S", 10*60*60);
// Connexion a la bdd
define ("BDD_NAME", "nvs");
define ("BDD_LOGIN", "root");
define ("BDD_PASSWORD", "");
// Brouillard de guerre de 2 jours
define ("BROUILLARD_DE_GUERRE_S", 24*3600*2);
// Difference nombre de joueurs max pour inscription
define ("MAX_NB_JOUEUR_DIFF", 3);


/*
	Parametres afferants aux regles du jeu
*/
// remplacer avec categorie etendard en base de donnee
Define("LISTE_ETENDARDS", "(8, 9, 12, 13)");

// CONTRAINTES DE CONSTRUCTION
// pourraient etre mises en base de donnee...
// NB genie et docteurs
define("CONTRAINTES_CONSTRUCTION_FORT_NB_GENIE", 16);
define("CONTRAINTES_CONSTRUCTION_FORTIN_NB_GENIE", 10);
define("CONTRAINTES_CONSTRUCTION_GARE_NB_GENIE", 6);
define("CONTRAINTES_CONSTRUCTION_HOSTO_NB_GENIE", 3);
define("CONTRAINTES_CONSTRUCTION_TDG_NB_GENIE", 1);

// Distance batiments
define("CONTRAINTES_CONSTRUCTION_FORT_DISTANCE", array("Bat" => 2, "Rapat" => 40, "Gare" => 20, "TDG" => 0));
define("CONTRAINTES_CONSTRUCTION_FORTIN_DISTANCE", array("Bat" => 2, "Rapat" => 40, "Gare" => 20, "TDG" => 0));
define("CONTRAINTES_CONSTRUCTION_GARE_DISTANCE", array("Bat" => 2, "Rapat" => 20, "Gare" => 40, "TDG" => 0));
define("CONTRAINTES_CONSTRUCTION_HOSTO_DISTANCE", array("Bat" => 2, "Rapat" => 20, "Gare" => 20, "TDG" => 0));
define("CONTRAINTES_CONSTRUCTION_BARRICADE_PONT_DISTANCE", array("Bat" => 0, "Rapat" => 2, "Gare" => 2, "TDG" => 0));
define("CONTRAINTES_CONSTRUCTION_TDG_DISTANCE", array("Bat" => 2, "Rapat" => 2, "Gare" => 2, "TDG" => 7));

?>
