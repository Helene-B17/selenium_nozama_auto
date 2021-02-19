package TestCase;

import static org.junit.Assert.*;

import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Connexion {
	
	  private static WebDriver driver;
	  
	  @Given("En tant qu utilisateur je souhaite pouvoir me connecter de facon a m authentifier sur la platform Nozama")
	  public void en_tant_qu_utilisateur_je_souhaite_pouvoir_me_connecter_de_facon_a_m_authentifier_sur_la_platform_Nozama() {
	      // Write code here that turns the phrase above into concrete actions
		  System.setProperty("webdriver.chrome.driver", "C:\\Users\\shruti\\selenium\\chromedriver.exe"); 
		  driver = new ChromeDriver(); 
		  driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS); 
		  driver.get("http://127.0.0.1/nozama/");
		  driver.manage().window().maximize();
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

	  @Then("Je verifie que je suis bien sur la page nozama en mode connecte")
	  public void je_verifie_que_je_suis_bien_sur_la_page_nozama_en_mode_connecte() {
	      // Write code here that turns the phrase above into concrete actions
		  assertEquals("Se déconnecter",driver.findElement(By.linkText("Se déconnecter")).getText());
	    }
		
}
