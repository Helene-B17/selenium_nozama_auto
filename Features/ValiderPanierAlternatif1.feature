Feature: Valider panier (cas alternatif1)
  Scenario Outline: L utilisateur affiche son panier pour le modifier et le valider
    Given En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir le modifier avant de le valider
    When je clique sur Voir le panier
    And je verifie <produit>, <quantite>, <prix> dans le panier ainsi que le <total> du panier
    And je veux modifier la <nouvellequantite> du <produit>
    And je clique sur Actualiser mon panier
    And je verifie <produit>, <nouvellequantite>, <nouveauprix> dans le panier ainsi que le <nouveautotal> du panier
    And je clique sur le bouton Valider la commande
    Then je verifie la <nouvellequantite>, <produit>, <nouveauprix> et le <nouveautotal> dans le contenu du panier.
    
    Examples:
		| produit													| prix 			| quantite 	| total   | nouvellequantite | nouveauprix | nouveautotal |
		| "Nintendo Wii"									| "189,20" 	| 1			   	| "189,20"| 2                | "378,40"    | "378,40"     | 
		| "Pratique des tests logiciels"	| "29,00" 	| 1				  | "29,00" | 0                | "0"         | "0"          |
		| "Tester une application web"		| "37,05" 	| 1				  | "37,05" | 5                | "185,25"    | "185,25"     |