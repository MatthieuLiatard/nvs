<?php
/**
 * Fonction permettant de savoir si un joueur porte l'étendard
 */
Define("LISTE_ETENDARDS", "(8, 9, 12, 13)");
 
function id_etendard_joueur($mysqli, $id_perso) {
	
	$sql = "SELECT perso_as_objet.id_objet FROM perso_as_objet WHERE id_perso='$id_perso' AND id_objet IN ". LISTE_ETENDARDS ." ORDER By equip_objet LIMIT 1";
	$res = $mysqli->query($sql);
	$num = $res->num_rows;
	
	if($num){
		$t = $res->fetch_assoc();
		return $t["id_objet"];
	}
	
	return 0;
}

function GetEtendardEnVisue($mysqli, $id_perso) {
	
	$sql = "
	SELECT 
		perso_in_compagnie.id_compagnie as Company, 
		perso.x_perso + (perso.perception_perso + perso.bonusPerception_perso) as X_Max, 
		perso.x_perso - (perso.perception_perso + perso.bonusPerception_perso) as X_Min, 
		perso.y_perso + (perso.perception_perso + perso.bonusPerception_perso) as Y_Max, 
		perso.y_perso - (perso.perception_perso + perso.bonusPerception_perso) as Y_Min 
	FROM perso 
	INNER JOIN perso_in_compagnie ON perso_in_compagnie.id_perso = perso.id_perso 
	WHERE perso.id_perso ='$id_perso';";
	$res = $mysqli->query($sql);
	$data = $res->fetch_assoc();
	
	// Excecuter le coe uniquement si le perso fait partie d'une compagnie
	// Si le perso ne fait partie d'aucune compagnie, return 0	
	if($data){
		$X_Max = $data['X_Max'];
		$Y_Max = $data['Y_Max'];
		$X_Min = $data['X_Min'];
		$Y_Min = $data['Y_Min'];
		$Company = $data['Company'];
		$sql = "
		SELECT perso_as_objet.id_objet FROM `perso` 
		INNER JOIN perso_in_compagnie ON perso_in_compagnie.id_compagnie = $Company AND attenteValidation_compagnie = 0
		INNER JOIN perso_as_objet ON perso_as_objet.id_perso = perso.id_perso AND perso_as_objet.id_objet IN ". LISTE_ETENDARDS ."
		WHERE x_perso <= $X_Max AND x_perso >= $X_Min AND y_perso >= $Y_Min AND y_perso <= $Y_Max; ";
		$res = $mysqli->query($sql);
		$data = $res->fetch_assoc();
		if($data){
			return $data['id_objet'];
		}
	}
	return 0;
}

// REMOVE
// DEVENU INUTILE AVEC LA GESTION UNIFORMISEE DES PROBA DE PERTE D'OBJET
function perte_etendard($mysqli, $idPerso_carte, $x_cible, $y_cible){
	$id_etendard = id_etendard_joueur($mysqli, $idPerso_carte);
	if($id_etendard > 0){
		// Suppression de l'étendard de l'inventaire du perso
		$sql = "DELETE FROM perso_as_objet WHERE id_perso='$idPerso_carte' AND id_objet='$id_etendard' LIMIT 1";
		$mysqli->query($sql);

		// Maj charge perso suite perte de l'arme
		$sql = "UPDATE perso SET charge_perso = charge_perso - (SELECT poids_objet FROM objet WHERE id_objet='$id_etendard') WHERE id_perso='$idPerso_carte'";
		$mysqli->query($sql);

		// On dépose la perte de l'étendard par terre
		$sql = "INSERT INTO objet_in_carte (type_objet, id_objet, nb_objet, x_carte, y_carte) VALUES ('2','$id_etendard','1','$x_cible','$y_cible')";
		$mysqli->query($sql);
	}
}


class Drapeau {
	public $id_etendard =0;
	function __construct($id_objet_etendard){
		$this->id_etendard = $id_objet_etendard;
	}
	
	function getBonus(){
		// `bonusPerception_perso`, `bonusRecup_perso`, `bonusPM_perso`, `bonusPA_perso`, `bonus_perso`
		$bonus = array('bonus_perso'=>0,'bonusRecup_perso'=>0);
		
		switch($this->id_etendard){
			case 8:
			case 9: //etendards de nation
				$bonus['bonusRecup_perso'] = 5;
				$bonus['bonus_perso'] = 5;
				break;
			case 12: //etendards de compagnie recup
				$bonus['bonusRecup_perso'] = 5;
				break;
			case 13: //etendards de compagnie esquive
				$bonus['bonus_perso'] = 5;
				break;
			default:
				break;
		}
		
		return $bonus;
	}
}