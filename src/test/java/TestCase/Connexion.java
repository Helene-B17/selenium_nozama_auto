package TestCase;

import static org.junit.Assert.*;

import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import Utilities.SetUp;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Connexion {
	
	  
	  private static String browser = "Chrome";
	  private WebDriver driver = SetUp.SetDriverUp(browser);

	  
	  @Given("En tant qu utilisateur je souhaite pouvoir me connecter de facon a m authentifier sur la platform Nozama")
	  public void en_tant_qu_utilisateur_je_souhaite_pouvoir_me_connecter_de_facon_a_m_authentifier_sur_la_platform_Nozama() {
	      // Write code here that turns the phrase above into concrete actions
	  }

	  @When("Je veux rentrer le {string} dans le champs login")
	  public void je_veux_rentrer_le_dans_le_champs_login(String string) {
	      // Write code here that turns the phrase above into concrete actions
		  driver.findElement(By.id("edit-name")).clear();
		 driver.findElement(By.id("edit-name")).sendKeys(string);
	      
	  }

	  @When("Je veux rentrer le {string} dans le champs Mot de Passe")
	  public void je_veux_rentrer_le_dans_le_champs_Mot_de_Passe(String string) {
	      // Write code here that turns the phrase above into concrete actions
		  driver.findElement(By.id("edit-pass")).clear();
		  driver.findElement(By.id("edit-pass")).sendKeys(string);
	    }

	  @When("Je veux cliquer sur le bouton connexion")
	  public void je_veux_cliquer_sur_le_bouton_connexion() {
	      // Write code here that turns the phrase above into concrete actions
		  driver.findElement(By.id("edit-submit")).click();
	    
	  }

	  @When("Je verifie que je suis bien sur la page nozama en mode connecte")
	  public void je_verifie_que_je_suis_bien_sur_la_page_nozama_en_mode_connecte() {
	      // Write code here that turns the phrase above into concrete actions
		  assertEquals("Se déconnecter",driver.findElement(By.linkText("Se déconnecter")).getText());
	    }
		
	  @Then("Je me deconnecte en cliquant sur le bouton {string}")
	  public void je_me_deconnecte_en_cliquant_sur_le_bouton(String string) {
	      // Write code here that turns the phrase above into concrete actions
		  string = "Se déconnecter";
	      driver.findElement(By.linkText(string)).click();
	      driver.close();
	  }

}
