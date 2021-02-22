package Utilities;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SetUp {
	private static WebDriver driver;
	public static WebDriver SetDriverUp(String browser) {
		if(driver != null && driver.toString().contains(browser.toLowerCase())) {
			System.out.println("*****************************************************************************************************************************" +
					driver.toString());
			return driver;
		}
		
		if (browser == "Chrome") {
		  System.setProperty("webdriver.chrome.driver", "src/test/java/Utilities/chromedriver.exe"); 
		  driver = new ChromeDriver();
		}
		  driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS); 
		  driver.get("http://127.0.0.1/nozama/");
		  driver.manage().window().maximize();
		  return driver;
		
	}
	
}
