Feature: Connexion
Scenario: L utilisateur est sur le detail du produit et l ajoute au panier
	Given je suis sur la page de detail du produit
	When je l ajoute au panier
	And je verifie le contenu de mon panier
	Then le produit et toutes ses informations sont exactes dans le panier