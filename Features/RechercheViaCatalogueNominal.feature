Feature: Recherche le detail d un produit via le catalogue
Scenario Outline: L utilisateur recherche un produit via le catalogue
	Given En tant qu utilisateur je souhaite pouvoir rechercher un produit de facon a pouvoir afficher le datail du produit via le catalogue
	When Je veux naviguer dans le <catalogs> puis sélectionner une <categories> afin de sélectionner un <articles> 
	And Je veux voir le <detail> sur produit pour l ajouter au panier
	And Je verifie que <articles> est ajoute au panier et que la <quantite> est la bonne ainsi que le <prix>
	And Les vérifications sont terminées je souhaite supprimer la <quantite>
	Then Je vérifie que le message <confirmation> est présent 
	
	Examples: 
	| catalogs	   | categories   | articles             | detail              | quantite | prix        | confirmation |
	| "Jeux vidéo" | "Playstation"| "Sony PlayStation 3" | "Réf. : B0009PRCNO" | 1        | "320,00 €"  | "Il n'y a aucun produit dans votre panier." |