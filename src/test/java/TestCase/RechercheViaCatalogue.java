package TestCase;

import static org.junit.Assert.*;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import Utilities.SetUp;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RechercheViaCatalogue {

	private static String browser = "Chrome";
	// Récupérération du setup du driver
	private WebDriver driver = SetUp.SetDriverUp(browser);
	
	// Manière raccourcie de faire un find by linktext
	public WebElement findText(String string) {
		return driver.findElement(By.linkText(string));
	}

	@Given("En tant qu utilisateur je souhaite pouvoir rechercher un produit via le catalogue de façon à pouvoir l ajouter au panier")
	public void en_tant_qu_utilisateur_je_souhaite_pouvoir_rechercher_un_produit_via_le_catalogue_de_façon_à_pouvoir_l_ajouter_au_panier() {
	    // Write code here that turns the phrase above into concrete actions
	}

	@When("Je veux naviguer dans le {string} par {string}")
	public void je_veux_naviguer_dans_le_par(String catalogue, String categorie) {
		// Write code here that turns the phrase above into concrete actions
		// on vérifie que le LIEN catalogue est affiché
		findText(catalogue).isDisplayed();
		driver.findElement(By.linkText(catalogue)).click();
		// Si catégorie est vide, on s'arrête ici, sinon on rentre dans le if
		if(categorie != "") {
			findText(categorie).isDisplayed();
			findText(categorie).click();
		}
		
	}

	@When("Je selectionne un {string} en cliquant sur le bouton Ajouter au panier")
	public void je_selectionne_un_en_cliquant_sur_le_bouton_Ajouter_au_panier(String produit) {
		// Write code here that turns the phrase above into concrete actions
		findText(produit).isDisplayed();
		driver.findElement(By.xpath("//*[@id='edit-submit-16']")).isDisplayed();
		driver.findElement(By.xpath("//*[@id='edit-submit-16']")).click();
		
	}

	@When("Je verifie que le {string} est dans le panier et que la {int} est remplie ainsi que le {string}")
	public void je_verifie_que_le_est_dans_le_panier_et_que_la_est_remplie_ainsi_que_le(String produit, Integer quantite,
			String prix) {
		// Write code here that turns the phrase above into concrete actions
		findText(produit).isDisplayed();
		// Je vérifie le prix affiché
		String priceText = driver.findElement(By.xpath("//*[@id='cart-form-products']/table[2]/tbody/tr[1]/td[5]/span")).getText();
		// Je vérifie que le text affiché est équivalent à celui de la variable de comparaison "prix"
		assertEquals(priceText, prix); 
		String quantity = driver.findElement(By.xpath("//*[@id=\'edit-items-0-qty\']")).getAttribute("value");
	}

	@Then("comme les verifications sont terminees je retire la {int} et je clique sur Actualiser le panier et je verifie que le {string} est present.")
	public void comme_les_verifications_sont_terminees_je_retire_la_et_je_clique_sur_Actualiser_le_panier_et_je_verifie_que_le_est_present(
			Integer quantité, String textToCheck) {
		// Je récupère le champs de quantité
		WebElement quantity = driver.findElement(By.xpath("//*[@id=\'edit-items-0-qty\']"));
		// Je vide le champs
		quantity.clear();
		// Je précise que je veux mettre 0 élément dans le panier afin de le supprimer
		quantity.sendKeys("0");
		// J'envoie la quantité => Equivalent à pressEnter
		quantity.sendKeys(Keys.ENTER);
		// Je vérifie que le text affiché est le bon
		WebElement isItEmpty = driver.findElement(By.xpath("//*[@id=\"content-content\"]/p"));
		assertEquals(isItEmpty.getText(), textToCheck);
	}

}
