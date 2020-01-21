<?php
session_start();

header("Content-type: image/png");//on va commencer par declarer que l'on veut creer une image

//ensuite on defini la taille de l'image
$gare_carte = imagecreate(603,603)  or die ("Cannot Initialize new GD image stream");
$image_carte = imagecreatefrompng("carte_tmp/carte.png");
$image_p = imagecreatetruecolor(603, 300);
imagecopyresampled($image_p, $image_carte, 0, 0, 0, 300, 603, 603, 603, 603);

//maintenant on donne une couleur a notre image (ici un fond noir)
$fond_perso=Imagecolorallocate($gare_carte, 250, 250, 250);

// on definit le font de l'image perso_carte comme transparent
imagecolortransparent($gare_carte,$fond_perso);

//Commme d'ab
require_once "../fonctions.php";

$mysqli = db_connexion();

// couleurs perso_carte
$noir 			= Imagecolorallocate($gare_carte, 0, 0, 0); // noir
$couleur_sud 	= Imagecolorallocate($gare_carte, 254, 10, 10); // rouge bien voyant
$couleur_rail	= Imagecolorallocate($gare_carte, 200, 200, 200); // gris rails

// je vais chercher les rails dans ma table
$sql = "SELECT x_carte, y_carte FROM carte WHERE fond_carte='rail.gif' AND y_carte <= 100";
$res = $mysqli->query($sql);

while ($t = $res->fetch_assoc()){
	
	$x = $t["x_carte"];
	$y = $t["y_carte"];
	
	imagefilledrectangle ($gare_carte, (($x*3)-1), (((600-($y*3)))-1), (($x*3)+1), (((600-($y*3)))+1), $couleur_rail);
	
}

// je vais chercher les gares dans ma table
$sql = "SELECT x_instance, y_instance, nom_instance, taille_batiment FROM instance_batiment, batiment 
		WHERE batiment.id_batiment = instance_batiment.id_batiment 
		AND pv_instance>0
		AND instance_batiment.id_batiment='11' AND camp_instance='2'";
$res = $mysqli->query($sql);

while ($t = $res->fetch_assoc()){
	
	$x 			= $t["x_instance"];
	$y 			= $t["y_instance"];
	$taille_bat = $t["taille_batiment"];
	$nom_bat	= "Gare ".$t["nom_instance"];
	
	$taille_text = strlen($nom_bat);
	
	$color = $couleur_sud;
	
	imagefilledrectangle ($gare_carte, (($x*3)-$taille_bat), (((600-($y*3)))-$taille_bat), (($x*3)+$taille_bat), (((600-($y*3)))+$taille_bat), $color);
	
	ImageString($gare_carte, 12, ($x*3)-($taille_text*3), ((600-($y*3))) + 3, $nom_bat, $noir);
}

imagepng($gare_carte, "carte_tmp/gare_sud.png");

imagecopymerge($image_p, $gare_carte, 0, 0, 0, 300, 603, 603, 100);

// on affiche l'image
imagepng($image_p, "carte_tmp/plan_gare_sud.png");


ImageDestroy ($gare_carte);
ImageDestroy ($image_carte);
?>