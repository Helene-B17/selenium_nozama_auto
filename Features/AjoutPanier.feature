Feature: Connexion
Scenario Outline: L utilisateur est sur le detail du produit et l ajoute au panier
	Given je suis sur la page de detail du <produit>
	When je l ajoute au panier
	And je vais verifier le contenu de mon panier
	Then le <produit> et les informations de prix et quantite sont exactes dans le panier
	
		Examples:
		| "produit "											| prix 			| quantite 	|
		| "Nintendo Wii"									| "189,20" 	| "1"				|
		| "Pratique des tests logiciels"	| "29,00" 	| "1"				|
		| "Tester une application web"		| "37,05" 	| "1"				|