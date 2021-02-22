package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ValiderPanierException {

	@Given("En tant qu utilisateur je souhaite afficher mon panier contenant <produit> avant de le valider")
	public void en_tant_qu_utilisateur_je_souhaite_afficher_mon_panier_contenant_produit_avant_de_le_valider() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je clique sur le bouton Voir le panier")
	public void je_clique_sur_le_bouton_Voir_le_panier() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je modifie la {string} de {string} dans le panier")
	public void je_modifie_la_de_dans_le_panier(String string, String string2) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je clique sur Mettre a jour le panier")
	public void je_clique_sur_Mettre_a_jour_le_panier() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je clique sur Valider la commande")
	public void je_clique_sur_Valider_la_commande() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("un <messageErreur> s affiche")
	public void un_messageErreur_s_affiche() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

}
