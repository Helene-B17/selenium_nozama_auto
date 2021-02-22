Feature: Valider panier (cas exception)
  Scenario Outline: L utilisateur affiche son panier pour le valider avec des quantite invalides
    Given En tant qu utilisateur je souhaite afficher mon panier contenant <produit> avant de le valider
    When je clique sur le bouton Voir le panier
    And je modifie la <quantite> de <article> dans le panier
    And je clique sur Mettre a jour le panier
    And je clique sur Valider la commande
    Then un <messageErreur> s affiche
    
    Examples:
    | article	              | quantite 		| messageErreur
    | "Sony PlayStation 3"  | "0"   			| "Il n'y a aucun produit dans votre panier."
    | "Sony PlayStation 3"  | "999999999" | "We're sorry. We have now only 900 units of the product Sony PlayStation 3 left in stock. Please review your shopping cart."
    | "Sony PlayStation 3"  | "A"					| "You have entered an invalid quantity."
    | "Sony PlayStation 3"  | "-1"				| "You have entered an invalid quantity."
    | "Sony PlayStation 3"  | "$"					| "You have entered an invalid quantity."
    | "Sony PlayStation 3"  | "1,2"				| "You have entered an invalid quantity."
    | "Sony PlayStation 3"  | "1.2"				| "You have entered an invalid quantity."
    