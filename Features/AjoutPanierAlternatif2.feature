Feature: Ajout Panier Alternatif2
Scenario Outline: L utilisateur ajoute plusieurs produits au panier. Il se connecte, quitte son navigateur et se reconnecte, son panier est restaure
	Given je suis sur la page qui affiche les details de <produit1>
	When j ajoute <quantite1> au panier 
	And je vais ensuite sur la page qui affiche les details de <produit2>
	And j ajoute <quantite2> au panier
	And je vais ensuite sur la page qui affiche les details de <produit3>
	And j ajoute <quantite3> au panier
	And je me connecte avec mon <login> et <motdepasse>
	And je quitte le navigateur, le relance puis reviens sur la page nozama en m identifiant a nouveau et j accede au panier
	Then le panier affiche les <produit1> et <produit2> et <produit3> leur <quantite1> et <quantite2> et <quantite3> et leurs <prix1> et <prix2> et <prix3>

			Examples:
		| produit1 						| produit2 				| produit3								|	quantite1 	| quantite2  	| quantite3 | prix1 		| prix2			| prix3 	| login 	| motdepasse 		|
		| "Nintendo DS Lite"	|	"Nintendo Wii"	|"La validation intégrée"	|  "2"				| "3"					| "1" 			| "291€60" 	| "567€60" 	| "27€00"	| "demo1" | "demo1" 			|