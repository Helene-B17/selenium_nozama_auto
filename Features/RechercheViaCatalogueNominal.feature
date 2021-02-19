Feature: Recherche le detail d un produit via le catalogue
Scenario Outline: L utilisateur recherche un produit via le catalogue
	Given En tant qu utilisateur je souhaite pouvoir rechercher un produit de fa�on � pouvoir afficher le d�tail du produit via le catalogue
	When Je veux naviguer dans le <catalogs>
	And  Je veux sélectionner une <categories>
	And Je veux s�lectionner un <articles> 
	And Je veux voir le <detail> sur produit 
	And Je veux l ajouter au panier
	And Je verifie que <articles> est ajout� au panier
	And Que la <quantite> est la bonne
	Then Que le <prix> est le bon
	When Les vérifications sont terminées je souhaite retirer <quantite>
	And Je vérifie que le message <confirmation> est présent
	
	Examples: 
	| catalogs	   | categories   | articles             | detail              | quantite | prix        | confirmation |
	| "Jeux vidéo" | "Playstation"| "Sony PlayStation 3" | "Réf. : B0009PRCNO" | 1        | "320,00 €"  | "Il n'y a aucun produit dans votre panier." |