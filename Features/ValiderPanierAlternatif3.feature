Feature: Valider panier (cas alternatif3)
  Scenario Outline: L utilisateur affiche son panier pour supprimer le contenu
    Given En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir supprimer son contenu
    When je clique sur Voir le panier
    And je verifie <produit>, <quantite>, <prix> dans le panier
    And je supprime le <produit> en cochant Retirer et en cliquant sur Actualiser mon panier
    Then je verifie que le message "Il n'y a aucun produit dans votre panier." s affiche.
    
    Examples:
		| produit 				                     | prix  	     | quantite  |
		| "Nintendo Wii"	                     | "189,20"    | 1			 	 |
		| "Pratique des tests logiciels"       | "29,00"     | 1			   |
		| "Industrialiser le test fonctionnel" | "3.300,00"  | 100       |