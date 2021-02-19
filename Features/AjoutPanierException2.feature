Feature: Ajout Panier Exception2
Scenario Outline: L utilisateur est sur le detail du produit et ajoute une quantite au panier puis la supprime
	Given je suis sur la page affichant les details de <produit>
	When j ajoute <quantite> au panier et je verifie le contenu du panier
	And je remplace la <quantite> par "0"
	Then un message d erreur s affiche indiquant que le panier est vide

			Examples:
		| produit													| quantite 		|
		| "Nintendo DS Lite"							|  "1"				|
