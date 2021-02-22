package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import Utilities.SetUp;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ConnexionFailed {
	
	private static String browser = "Chrome";
	  WebDriver driver;

	@Given("En tant qu utilisateur je souhaite pouvoir me connecter de facon a m authentifier sur la platforme Nozama")
	public void en_tant_qu_utilisateur_je_souhaite_pouvoir_me_connecter_de_facon_a_m_authentifier_sur_la_platforme_Nozama() {
		driver=SetUp.SetDriverUp(browser);
	   }

	@When("Je veux rentrer un {string} innexistant dans le champs login")
	public void je_veux_rentrer_un_innexistant_dans_le_champs_login(String string) {
		driver.findElement(By.id("edit-name")).clear();
		 driver.findElement(By.id("edit-name")).sendKeys(string);
	   
	}

	@When("Je veux rentrer le {string} dans le champs mot de passe")
	public void je_veux_rentrer_le_dans_le_champs_Mot_de_Passe(String string) {
		driver.findElement(By.id("edit-pass")).clear();
		  driver.findElement(By.id("edit-pass")).sendKeys(string);
	   }

	@Then("Je verifie qu un message d erreur s affiche")
	public void je_verifie_qu_un_message_d_erreur_s_affiche() {
		assertTrue(driver.findElement(By.cssSelector("BODY")).getText().matches("Sorry, unrecognized username or password."));
	    
	}
}
