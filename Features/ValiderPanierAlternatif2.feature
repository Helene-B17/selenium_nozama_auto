Feature: Valider panier (cas alternatif2)
  Scenario Outline: L utilisateur affiche son panier pour supprimer un produit
    Given En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir supprimer un produit
    When je clique sur Voir le panier
    And je verifie <produit1>, <quantite1>, <prix1>, <produit2>, <quantite2>, <prix2> dans le panier ainsi que le <total> du panier
    And je veux supprimer le <produit1> en cochant Retirer et en cliquant sur Actualiser mon panier
    Then je verifie que <produit1> est absent dans le panier et je clique sur Valider la commande.
    
    Examples:
		| produit1				| prix1 	| quantite1 | produit2											| prix2 	| quantite2 | total    |
		| "Nintendo Wii"	| "189,20"| 1			   	| "Pratique des tests logiciels"| "29,00" | 1				  | "218,20" |