Feature: Recherche le détail d un produit via le catalogue
Scenario: L utilisateur recherche un produit via le catalogue
	Given En tant qu utilisateur je souhaite pouvoir rechercher un produit de façon à pouvoir afficher le détail du produit via le catalogue
	When Je veux naviguer dans le catalogue par categorie
	And Je veux sélectionner un produit pour voir le détail du produit
	And Je veux l ajouter au panier
	Then Je verifie que l article est ajouté au panier
	