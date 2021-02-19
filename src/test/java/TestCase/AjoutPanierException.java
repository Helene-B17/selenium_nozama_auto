package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class AjoutPanierException {

	@Given("je suis sur la page de detail de {string}")
	public void je_suis_sur_la_page_de_detail_de(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("j ajoute {string} a mon panier")
	public void j_ajoute_au_panier(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("un message d erreur s affiche")
	public void un_message_d_erreur_s_affiche() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

}
