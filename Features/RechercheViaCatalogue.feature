Feature: Rechercher un produit via le catalogue (cas alternatif)

# Décorateur permettant de lier des suites
@Search
Scenario Outline: L utilisateur recherche un produit via le catalogue

	Given En tant qu utilisateur je souhaite pouvoir rechercher un produit via le catalogue de façon à pouvoir l ajouter au panier 
	When Je veux naviguer dans le <catalogue> par <categorie>
	And Je selectionne un <produit> en cliquant sur le bouton Ajouter au panier
	And Je verifie que le <produit> est dans le panier et que la <quantite> est remplie ainsi que le <prix>
	Then comme les verifications sont terminees je retire la <quantite> et je clique sur Actualiser le panier et je verifie que le "Il n'y a aucun produit dans votre panier." est present.
	
	# Tableau de valeur qui comporteront ... 
	Examples:
	| catalogue    | categorie     | produit                              | quantite | prix       | 
	| "Jeux vidéo" | "Playstation" | "Sony PlayStation 3"                 | 1        | "320,00 €" |
	| "Jeux vidéo" | "Wii & DS"    | "Nintendo DS Lite"                   | 1        | "145,80 €" |
	| "Jeux vidéo" | "Xbox"   		 | "Microsoft Xbox 360"                 | 1        | "189,95 €" |
	| "Livres" 		 |  ""           | "Industrialiser le test fonctionnel" | 1        | "33,00 €"  | 
	