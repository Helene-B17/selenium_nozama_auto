package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class AjoutPanierException2 {

	@Given("je suis sur la page affichant les details de {string}")
	public void je_suis_sur_la_page_affichant_les_details_de(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("j ajoute {string} au panier et je verifie le contenu du panier")
	public void j_ajoute_au_panier_et_je_verifie_le_contenu_du_panier(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je remplace la {string} par {string}")
	public void je_remplace_la_par(String string, String string2) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("un message d erreur s affiche indiquant que le panier est vide")
	public void un_message_d_erreur_s_affiche_indiquant_que_le_panier_est_vide() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();

}
}