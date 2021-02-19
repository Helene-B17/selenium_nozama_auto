Feature: Connexion Echec
Scenario Outline: L utilisateur remplie les champs pour la connexion avec des données erronées
	Given En tant qu utilisateur je souhaite pouvoir me connecter de facon a m authentifier sur la platforme Nozama
	When Je veux rentrer un <login> innexistant dans le champs login
	And Je veux rentrer le <motdepasse> dans le champs Mot de Passe
	And Je veux cliquer sur le bouton connexion
	Then Je verifie qu un message d erreur s affiche
	
	Examples:
		| login | motdepasse |
		| $demo1	| demo1		 |
		| demo2@	| demo2	 	|
		| demo 3	| demo3		 |
		| démo1	| demo1		 |
		| demo22	| demo2	 	|
		| 	| demo2	 	|

		

