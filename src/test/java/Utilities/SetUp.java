package Utilities;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SetUp {
	public static void SetDriverUp(WebDriver driver) {
		  System.setProperty("webdriver.chrome.driver", "src/test/java/Utilities/chromedriver.exe"); 
		  driver = new ChromeDriver(); 
		  driver.manage().timeouts().implicitlyWait(30,TimeUnit.SECONDS); 
		  driver.get("http://127.0.0.1/nozama/");
		  driver.manage().window().maximize();
		
	}
	
}
