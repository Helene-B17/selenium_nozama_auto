Feature: Valider commande nominal
Scenario Outline: L utilisateur a valide son panier et remplit les champs afin de valider sa commande
	Given je suis sur la page avec le contenu de mon panier
	When je valide le panier et le systeme me recapitule le <produit>, sa <quantite> et son <prix>
	And le systeme me demande de m authentifier avec mon <login> et <motdepasse>
	And je clique sur "suivant" et je remplis les champs du bon de commande avec mon <prenom>, <nom>, <adresse>, <ville>, <pays> et mon <codePostal>
	And je clique sur "suivant" et je coche l option "Mon adresse de facturation est identique à mon adresse de livraison."
	And je clique sur "suivant" et je verifie le montant du <colisPostal>
	And je clique sur "suivant" et verifie le <prix>, le <colisPostal>, le <montantTTC> et le <totalCommande>
	And je remplis les champs du mode de paiement avec le <numCarte>, <dateExp> et <crypto>
	And je clique sur "suivant" puis sur "vérifier la commande"
	And une page recapitulant les infos <produit>, <quantite>, <prix>, <prenom>, <nom>, <adresse>, <codePostal>, <ville>, <colisPostal>, <totalCommande>, les quatre derniers chiffres du <numCarte> et la <dateExp> s affiche
	And je clique sur "Submit order"
	Then le message "Commande terminée" s affiche avec le numero de la commande.
	
		Examples:
		| produit							| quantite 		| prix			| login 	| motdepasse 	| prenom 		| nom 		| adresse 	| ville 	| pays 			| codePostal 	| colisPostal 					| montantTTC 	| totalCommande | numCarte 						| dateExp			 			| crypto 	|
		| "Nintendo DS Lite"	|  "1"				| "145,80"	| "demo1" | "demo1" 		| "demo" 		| "demo" 	| "demo" 		| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "174,96" 		| "182,96"			| "5181888346131442" 	| "03 - March 2021" | "111" 	|
		| "Test logiciel"			|  "2"				| "72,00"		| "demo1" | "demo1" 		| "demo" 		| "demo" 	| "demo" 		| "demo" 	| "France" 	| "35000" 		| "Colis postal: 8,00 €"| "75,96" 		| "83,96"				| "5181888346131442" 	| "03 - March 2021" | "111" 	|