Feature: Connexion

  @Connexion
  Scenario Outline: L utilisateur remplie les champs pour la connexion
    Given En tant qu utilisateur je souhaite pouvoir me connecter de facon a m authentifier sur la platform Nozama
    When Je veux rentrer le <login> dans le champs login
    And Je veux rentrer le <motdepasse> dans le champs Mot de Passe
    And Je veux cliquer sur le bouton connexion
    And Je verifie que je suis bien sur la page nozama en mode connecte
    Then Je me deconnecte en cliquant sur le bouton "Se déconnecter"

    Examples: 
      | login   | motdepasse |
      | "demo1" | "demo1"    |
      | "demo2" | "demo2"    |
      | "demo3" | "demo3"    |
