Feature: Ajout Panier Alternatif
Scenario Outline: L utilisateur ajoute une quantite au panier. Il se connecte, quitte son navigateur et revient.
	Given je suis sur la page affichant les details de <produit>
	When j ajoute <quantite> au panier 
	And je me connecte avec mon <login> et <motdepasse>
	And je quitte le navigateur puis reviens sur la page nozama en m identifiant a nouveau et j accede au panier
	Then la panier affiche le <produit> sa <quantite> et le <prix>

			Examples:
		| produit							| quantite 		| prix 			| login 	| motdepasse 		|
		| "Nintendo DS Lite"	|  "1"				| "145€80" 	| "demo1" | "demo1" 			|