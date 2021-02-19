Feature: Recherche le detail d un produit via le catalogue
Scenario Outline: L utilisateur recherche un produit via le catalogue N
	Given En tant qu utilisateur je souhaite pouvoir rechercher un produit de facon a pouvoir afficher le datail du produit via le catalogue
	When Je veux naviguer dans le <catalogs> puis s√©lectionner une <categories> afin de s√©lectionner un <articles> 
	And Je veux voir le <detail> sur produit pour l ajouter au panier
	And je verifie que <articles> est ajoute au panier et que la <quantite> est la bonne ainsi que le <prix>
	And Les verifications sont terminees je souhaite retirer <quantite>
	Then Je verifie le message <confirmation> est present
Examples:
	| catalogs     | categories    | articles 						| detail 							| quantite | prix 			| confirmation															  |
	| "Jeux video" | "Playstation" | "Sony Playstation 3" | "RÈf. : B0009PRCN0" | 1 			 | "320,00 Ä" | "Il n'y a aucun produit dans votre panier." |

