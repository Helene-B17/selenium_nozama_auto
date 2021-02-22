package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ValiderPanierAlternatif2 {

	@Given("En tant qu utilisateur je souhaite afficher mon panier de facon a pouvoir supprimer un produit")
	public void en_tant_qu_utilisateur_je_souhaite_afficher_mon_panier_de_facon_a_pouvoir_supprimer_un_produit() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je verifie {string}, {int}, {string}, {string}, {int}, {string} dans le panier ainsi que le {string} du panier")
	public void je_verifie_dans_le_panier_ainsi_que_le_du_panier(String string, Integer int1, String string2, String string3, Integer int2, String string4, String string5) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("je veux supprimer le {string} en cochant Retirer et en cliquant sur Actualiser mon panier")
	public void je_veux_supprimer_le_en_cochant_Retirer_et_en_cliquant_sur_Actualiser_mon_panier(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("je verifie que {string} est absent dans le panier et je clique sur Valider la commande.")
	public void je_verifie_que_est_absent_dans_le_panier_et_je_clique_sur_Valider_la_commande(String string) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

}
