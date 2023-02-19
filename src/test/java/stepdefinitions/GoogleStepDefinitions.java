package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.GooglePage;
import utilities.ConfigReader;
import utilities.Driver;

public class GoogleStepDefinitions {
    GooglePage googlePage = new GooglePage();

    @Given("kullanici google'a gider")
    public void kullanici_google_a_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("google_url"));
        //CEREZ CIKAN ARKADASLAR ICIN, CEREZI OKEYLIYELIM
//        try {
//        googlePage.popUpAccept.click();
//        }catch (Exception e){
//        }
    }

    @When("kullanici iphone icin arama yapar")
    public void kullanici_iphone_icin_arama_yapar() {
        googlePage.searchBox.sendKeys("iPhone", Keys.ENTER);
    }

    @Then("sonuclarda iphone oldugunu dogrular")
    public void sonuclarda_iphone_oldugunu_dogrular() {
            Assert.assertTrue(Driver.getDriver().getPageSource().contains("iPhone"));
    }

    @Then("close the application")
    public void close_the_application() {
        Driver.closeDriver();
    }

    @When("kullanici tesla icin arama yapar")
    public void kullanici_tesla_icin_arama_yapar() {
        googlePage.searchBox.sendKeys("tesla",Keys.ENTER);

    }
    @Then("sonuclarda tesla oldugunu dogrular")
    public void sonuclarda_tesla_oldugunu_dogrular() {
        Assert.assertTrue(Driver.getDriver().getPageSource().contains("tesla"));
    }


}
