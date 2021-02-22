package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ValiderPanierException2 {

	@Given("En tant qu utilisateur je souhaite afficher mon panier vide")
	public void en_tant_qu_utilisateur_je_souhaite_afficher_mon_panier_vide() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je clique sur le bouton panier")
	public void je_clique_sur_le_bouton_panier() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("un {string} s affiche")
	public void un_s_affiche(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

}
