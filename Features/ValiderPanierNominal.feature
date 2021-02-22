Feature: Valider panier (cas nominal)
  Scenario Outline: L utilisateur affiche son panier pour le valider
    Given En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir valider mon panier
    When je clique sur Voir le panier
    And je verifie <article1>, <article2>, <quantite>, <prix1>, <prix2> dans le panier
    And je clique sur le bouton Valider la commande
    Then je verifie la <quantite>, <article> et le <prix> dans le contenu du panier
    
    Examples:
    | article1              | article2                | quantite | prix1      | prix2    |
    | "Sony PlayStation 3"  | "Le test des logiciels" | 1        | "320,00 €" | "55,00€" |
