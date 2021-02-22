Feature: Valider Commande Alternatif1 
  Scenario Outline: L utilisateur accede a son bon de commande pre rempli pour le valider
    Given En tant qu utilisateur je souhaite acceder au bon de commande afin de valider ma commande
    When je clique sur le bouton Valider ma commande
    And je clique sur click here, je renseigne <login>, <mdp> et je clique sur Se connecter
    And je verifie mon <mail> puis clique sur Suivant
    And je selectionne mon <adresse> dans adresses enregistrees et je verifie <prenom>,<nom>,<ville>,<codepostal> et je clique sur suivant
    And je coche l adresse de facturation et je clique sur suivant
    And je verifie le montant des frais de port et clique sur suivant
    And je renseigne <numcarte>, <anneeexpiration>, <cryptogramme> puis clique sur Suivant et sur Verifier la commande
    And je verifie les informations et clique sur Submit Order
    Then je verifie que le message "Commande terminée" est present.

    Examples: 
      | login    | mdp       | mail              | adresse                | prenom   | nom      | ville       | codepostal | numcarte         | anneeexpiration | cryptogramme |
			| "marc"   | "marc00"  | "marc@gmail.com"  | "rue des marres"       | "marc"   | "marco"  | "marseille" | 13000      | 5580144932393377 | 2022            |111           |
			| "michel" | "dupont1" | "michel@yahoo.fr" | "12 allée des mimosas" | "michel" | "dupont" | "vannes"    | 56000      | 4716218573183    | 2040            |236           |