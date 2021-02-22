Feature: Valider Commande Alternatif2
  Scenario Outline: L utilisateur deja connecte accede a son bon de commande pour le valider
    Given je suis auhtentifie avec <login>,<mdp>
    When je verifie <porduit>,<quantite>,<prix> et je clique sur Valider la commande
    And je verifie mon <mail> et clique sur Suivant
    And je selectionne mon <adresse> et verifie <nom>,<ville>,<CP> et clique sur Suivant
    And je selectionne mon adresse de facutartion et clique sur Suivant
    And je verifie <fraisport> et clique sur Suivant
    And je renseigne <numcarte>,<date>,<crypto> et clique sur Suivant
    And je clique sur le bouton Verfifier la commande, verifie les informations et clique sur le bouton Submit Order
    Then je verifie que "Commande terminée" est present.

    Examples: 
      | login    | mdp       | produit            | quantite | prix       | mail            | adresse         | nom      | ville       | CP    | fraisport              | numcarte         | date | crypto |
      |"marc"    | "marc00"  | "Microsoft Kinect" | 1        | "124,90 €" |"marc@gmail.com" | "rue des marres"| "marco"  | "marseille" | 13000 | "Colis postal: 8,00 €" | 5580144932393377 | 2022 | 111    | 