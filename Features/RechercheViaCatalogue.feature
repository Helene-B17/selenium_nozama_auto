Feature: Rechercher un produit via le catalogue
Scenario: L utilisateur recherche un produit via le catalogue
	Given En tant qu utilisateur je souhaite pouvoir rechercher un produit via le catalogue de façon à pouvoir l ajouter au panier 
	When Je veux naviguer dans le catalogue par categorie
	And Je veux sélectionner un produit
	And Je veux l ajouter au panier
	Then Je verifie que l article est ajouté au panier
	