package Cucumber;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.runner.RunWith;

import Utilities.GlobalVariable;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;



// Permet de dire qu'on le lance avec le selenium.junit.cucumber
@RunWith(Cucumber.class)
// features = "features" => Récupère l'intégralité du dossier Features et nous interprête le gherkin dans le cucumber dans la console
// glue = "TestCase" => permet de lier les .features au cas de test dans le package test case TestCase
@CucumberOptions(
		// Permet de générer des rapport présent dans /target
		plugin= {"pretty", "json:target/json/output.json", "html:FeaturesReport", "html:target/html/report" },
		features="Features", 
		glue="TestCase",
		// permet de lancer les cas de test tagué, dans l'ordre des @ (équivalent à des collections de suites)
		tags= {"@Connexion, @Search"}
		

)
public class CucumberSuiteRunner {

}

