Feature: Valider panier (cas exception2)
  Scenario Outline: L utilisateur affiche son panier vide pour le valider 
    Given En tant qu utilisateur je souhaite afficher mon panier vide 
    When je clique sur le bouton panier
    Then un <messagedErreur> s affiche
    
    Examples:
    | messagedErreur 															|
    | "Il n'y a aucun produit dans votre panier." |