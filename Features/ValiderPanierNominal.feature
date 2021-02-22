Feature: Valider panier (cas nominal)
  Scenario Outline: L utilisateur affiche son panier pour le valider
    Given En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir valider mon panier
    When je clique sur Voir le panier
    And je verifie <produit>, <quantite>, <prix> dans le panier
    And je clique sur le bouton Valider la commande
    Then je verifie la <quantite>, <produit> et le <prix> dans le contenu du panier
    
    Examples:
		| produit													| prix 			| quantite 	|
		| "Nintendo Wii"									| "189,20" 	| "1"				|
		| "Pratique des tests logiciels"	| "29,00" 	| "1"				|
		| "Tester une application web"		| "37,05" 	| "1"				|