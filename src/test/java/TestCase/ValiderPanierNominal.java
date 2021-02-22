package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ValiderPanierNominal {

	@Given("En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir valider mon panier")
	public void en_tant_qu_utilisateur_je_souhaite_afficher_mon_panier_de_facon_a_pouvoir_valider_mon_panier() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je clique sur Voir le panier")
	public void je_clique_sur_Voir_le_panier() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je verifie {string}, {string}, {string} dans le panier")
	public void je_verifie_dans_le_panier(String string, String string2, String string3) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je clique sur le bouton Valider la commande")
	public void je_clique_sur_le_bouton_Valider_la_commande() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("je verifie la {string}, {string} et le {string} dans le contenu du panier")
	public void je_verifie_la_et_le_dans_le_contenu_du_panier(String string, String string2, String string3) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

}
