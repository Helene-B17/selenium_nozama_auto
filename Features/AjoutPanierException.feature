Feature: Ajout Panier Exception 
Scenario Outline: L utilisateur est sur le detail du produit et ajoute une quantite invalide au panier
	Given je suis sur la page de detail de <produit>
	When j ajoute <quantite> a mon panier 
	Then un message d erreur s affiche
	
		Examples:
		| produit													| quantite 		|
		| "Nintendo DS Lite"							|  "0"				|
		| "Nintendo DS Lite"							|  "A"				|
		| "Nintendo DS Lite"							|  "999999"		|
		| "Nintendo DS Lite"							|  "-1"				|
		| "Nintendo DS Lite"							|  "$"				|
		| "Nintendo DS Lite"							|  "1,2"			|
		| "Nintendo DS Lite"							|  "1.2"			| 
