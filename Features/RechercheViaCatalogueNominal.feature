@Search @1
Feature: Recherche le detail d un produit via le catalogue (cas nominal)

  Scenario Outline: L utilisateur recherche un produit via le catalogue
    Given En tant qu utilisateur je souhaite pouvoir rechercher un produit de facon a pouvoir afficher le detail du produit via le catalogue
    When Je veux naviguer dans le <catalogs> puis selectionner une <categories> afin de selectionner un <articles>
    And Je veux voir le <detail> sur produit pour l ajouter au panier
    And Je verifie que <articles> est ajoute au panier et que la <quantite> est la bonne ainsi que le <prix>
    And Les verifications sont terminees je souhaite supprimer la 0 et je clique sur Actualiser le panier
    Then Je verifie le message <confirmation> est present

    Examples: 
      | catalogs   | categories    | articles                             | detail          | quantite | prix     | confirmation                                 |
      | "Jeux vid" | "Playstation" | "Sony Playstation 3"                 | "B0009PRCN0"    |        1 | "320,00" | "Il n'y a aucun produit dans votre panier. " |
      | "Jeux vid" | "Wii & DS"    | "Nintendo DS Lite"                   | "B000FO4KO8"    |        1 | "145,80" | "Il n'y a aucun produit dans votre panier. " |
      | "Jeux vid" | "Xbox"        | "Microsoft Xbox 360"                 | "B000NVLEQK"    |        1 | "199,95" | "Il n'y a aucun produit dans votre panier. " |
      | "Livres"   | ""            | "Industrialiser le test fonctionnel" | "9782100515332" |        1 | "33,00"  | "Il n'y a aucun produit dans votre panier. " |
