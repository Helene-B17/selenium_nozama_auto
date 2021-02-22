package Utilities;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SetUp {
	private static WebDriver driver;
	public static WebDriver SetDriverUp(String browser) {
		
		// Si le driver existe
		if(driver != null && driver.toString().contains(browser.toLowerCase())) {
			
			// Debug = permet de vérifier les erreur
			System.out.println("*****************************************************************************************************************************" +
					driver.toString());
			// On retourne l'ancienne version du setUp du driver
			return driver;
		}
		
		// on check le browser passé pour set-up le bon navigateur
		if (browser == "Chrome") {
		  System.setProperty("webdriver.chrome.driver", "src/test/java/Utilities/chromedriver.exe"); 
		  driver = new ChromeDriver();
		}
		
		  driver.manage().timeouts().implicitlyWait(1,TimeUnit.SECONDS); 
		  driver.get("http://127.0.0.1/nozama/");
		  driver.manage().window().maximize();
		  return driver;
		
	}
	
}
