package TestCase;

import static org.junit.Assert.*;

import java.util.concurrent.TimeUnit;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.By.ByClassName;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import Utilities.SetUp;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RechercheViaCatalogueNominal {
	private static String browser = "Chrome";
	 WebDriver driver;

	@Given("En tant qu utilisateur je souhaite pouvoir rechercher un produit de facon a pouvoir afficher le detail du produit via le catalogue")
	public void en_tant_qu_utilisateur_je_souhaite_pouvoir_rechercher_un_produit_de_facon_a_pouvoir_afficher_le_detail_du_produit_via_le_catalogue() {
	    // Write code here that turns the phrase above into concrete actions
		driver=SetUp.SetDriverUp(browser);
		 driver.findElement(By.id("edit-name")).sendKeys("demo1");
		 driver.findElement(By.id("edit-pass")).sendKeys("demo1");
		 driver.findElement(By.id("edit-submit")).click();
	  }

	@When("Je veux naviguer dans le {string} puis selectionner une {string} afin de selectionner un {string}")
	public void je_veux_naviguer_dans_le_puis_selectionner_une_afin_de_selectionner_un(String string, String string2, String string3) {
	    // Write code here that turns the phrase above into concrete actions
		driver.findElement(By.partialLinkText(string)).click();
		if(string2 != "") {
	    driver.findElement(By.linkText(string2)).click();
		}
	    assertEquals(string3, driver.findElement(By.linkText(string3)).getText());
	    driver.findElement(By.partialLinkText(string3)).click();
		
	}

	@When("Je veux voir le {string} sur produit pour l ajouter au panier")
	public void je_veux_voir_le_sur_produit_pour_l_ajouter_au_panier(String string) {
	    String text[]=driver.findElement(By.xpath(".//div[@class='product-info model']")).getText().split(": ", 10);
	    		//("product-info model")).getText().split(": ", 10);
	    System.out.println(text[1]);
		assertEquals(string,text[1]);
		//driver.findElement(By.id("edit-submit-16")).click();
		driver.findElement(By.cssSelector("input[type='submit']")).click();
		driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS);
	}

	@When("Je verifie que {string} est ajoute au panier et que la {string} est la bonne ainsi que le {string}")
	public void je_verifie_que_est_ajoute_au_panier_et_que_la_est_la_bonne_ainsi_que_le(String string, String string1, String string2) {
		assertEquals(string1 , driver.findElement(By.xpath("//div[@id='block-uc_cart-0']/div/div/table/tbody/tr/td")).getText());
		String basket_price[]=driver.findElement(By.xpath("//div[@id='block-uc_cart-0']/div/div/table/tbody/tr/td[2]/span")).getText().split(" �",10);
		String panier_prix=basket_price[0];
		assertEquals(string2,panier_prix);
	}

	@When("Les verifications sont terminees je souhaite supprimer la et je clique sur Actualiser le panier")
	public void les_verifications_sont_terminees_je_souhaite_supprimer_la_et_je_clique_sur_Actualiser_le_panier() {
		driver.findElement(By.id("edit-items-0-qty")).clear();
	    driver.findElement(By.id("edit-items-0-qty")).sendKeys("0");
	    driver.findElement(By.id("edit-checkout")).click();
	   
	}

	@Then("Je verifie le message {string} est present")
	public void je_verifie_le_message_est_present(String string) {
		assertEquals("Il n'y a aucun produit dans votre panier.", driver.findElement(By.xpath("//div[@id='content-content']/p")).getText());
	    driver.close();
	}

}
