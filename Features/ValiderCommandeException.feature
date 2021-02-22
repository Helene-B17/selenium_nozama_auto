Feature: Valider commande exception
Scenario Outline: L utilisateur valide son panier et remplit les champs afin de valider sa commande
	Given je suis sur la page avec le contenu du panier
	When je valide le panier, le systeme me recapitule le <produit>, sa <quantite> et son <prix>
	And le systeme demande un <mail>
	And je clique sur "suivant" et remplis les champs du bon de commande avec mon <prenom>, <nom>, <adresse>, <ville>, <pays> et mon <codePostal>
	And je clique sur "suivant" et coche l option "Mon adresse de facturation est identique à mon adresse de livraison."
	And je clique sur "suivant" et verifie le montant du <colisPostal>
	And je clique sur "suivant" et je verifie le <prix>, le <colisPostal>, le <montantTTC> et le <totalCommande>
	And je remplis les champs du mode de paiement avec les <numCarte>, <dateExp> et <crypto>
	And je clique sur "suivant" et ensuite sur "vérifier la commande"
	And une page recapitulant toutes les infos <produit>, <quantite>, <prix>, <prenom>, <nom>, <adresse>, <codePostal>, <ville>, <colisPostal>, <totalCommande>, les quatre derniers chiffres du <numCarte> et la <dateExp> s affiche
	And je clique sur le bouton "Submit order"
	Then un <messageErreur> dans un cadre rouge s affiche
	
		Examples:
		| produit							| quantite 		| prix			| mail							| prenom 		| nom 			| adresse 	| ville 	| pays 			| codePostal 	| colisPostal 					| montantTTC 		| totalCommande | numCarte 						| dateExp			 				| crypto 	| messageErreur 																						|
		| "Test logiciel"			|  "2"				| "72,80"		| "demo1nozama.fr" 	| "demo" 		| "demo" 		| "demo" 		| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Vous devez saisir une adresse de courriel valide." 			|
		| "Test logiciel"			|  "2"				| "72,00"		| "" 								| "demo" 		| "demo" 		| "demo" 		| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Le champ Adresse de courriel est obligatoire."						|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo" 		| "demo"	 	| "demo"	 	| "$-2éµ*"| "France" 	| "demo" 			| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Vous devez saisir une ville valide" 											|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo"	 	| "demo"	 	| "demo"	 	| "demo"	| "France" 	| "$-2éµ*" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Vous devez saisir un code postal valide" 								|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr"	| ""		 		| "demo" 		| "demo" 		| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Le champ Prénom  est obligatoire."												|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr"	| "demo" 		| "" 				| "demo" 		| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Le champ Nom est obligatoire."														|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo" 		| "demo" 		| "" 				| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021"		| "111" 	| "Le champ Adresse 1 est obligatoire."											|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo" 		| "demo" 		| "demo" 		| ""		 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Le champ Ville est obligatoire."													|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo" 		| "demo" 		| "demo" 		| "demo"	| "France" 	| "" 					| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021" 	| "111" 	| "Le champ Code Postal est obligatoire."										|			
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo" 		| "demo" 		| "demo" 		| "demo"	| "France" 	| "" 					| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "5181888346131442" 	| "03 - March 2021"		| "111" 	| "The credit card you entered has expired."								|	
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1nozama.fr" 	| "demo" 		| "demo" 		| "demo" 		| "demo"	| "France" 	| "" 					| "Colis postal: 8,00 €"| "75,96" 			| "83,96"				| "8947854545798987" 	| "03 - March 2021"		| "111" 	| "Vous avez saisi un numéro de carte de crédit invalide." 	|								