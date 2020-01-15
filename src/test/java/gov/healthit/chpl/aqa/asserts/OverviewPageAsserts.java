package gov.healthit.chpl.aqa.asserts;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import cucumber.api.java.en.Then;
import gov.healthit.chpl.aqa.pageObjects.OverviewPage;
import gov.healthit.chpl.aqa.stepDefinitions.Base;

/**
 * Class OverviewPageAsserts definition.
 */
public class OverviewPageAsserts extends Base {
    /**
     * Assert that page title is correct.
     * @param title expected page title
     */
    @Then("^Overview page title should be \"([^\"]*)\"$")
    public void overviewPageTitleShouldBe(final String title) {
        assertEquals(OverviewPage.title(getDriver()).getText(), title);
    }

    /**
     * Assert that combination of body/name is found the the table somewhere.
     * @param body expected ONC body
     * @param name expected ONC body's name
     */
    @Then("^ONC-ACB and ONC-ATL information table shows \"([^\"]*)\" and \"([^\"]*)\"$")
    public void theTableShowsDataFromDatabase(final String body, final String name)  {
        boolean isFound = false;

        WebElement table = OverviewPage.acbAtlTable(getDriver());
        List<WebElement> rows = table.findElements(By.xpath("tbody/tr"));

        for (WebElement row : rows) {
            List<WebElement> cols = row.findElements(By.xpath("td"));
            if (cols.get(0).getText().equals(body) && cols.get(1).getText().equals(name)) {
                isFound = true;
                break;
            }
        }
        assertTrue(isFound, "Body: " + body + " / Name: " + name + " not found");
    }

    /**
     * Assert that updated content is found in the webpage.
     * @param expectedText is the expected text
     */
    @Then("^the \"([^\"]+)\" shows as expected$")
    public void updatedContentShowsAsExpected(final String expectedText) {
        String actualText = OverviewPage.pageContent(getDriver()).getText();
        assertTrue(actualText.contains(expectedText), " not found on Overview page : " + actualText);
    }

    /**
     * Verify that link points to correct URL.
     * @param url is URL tied to link text
     * @param linkText text of link
     * @param headerNumber is header locator
     */
    @Then("^the link should point to correct url \"([^\"]*)\""
            + " for respective section of \"([^\"]*)\" and header \"([^\"]*)\" on the page$")
    public void urlForNavLinksOnOverviewPage(final String url, final String linkText, final String headerNumber) {
      String currentURL = getDriver().getCurrentUrl();
      assertEquals(currentURL, url);
      getDriver().getPageSource().contains(linkText);
      assertTrue(OverviewPage.headerText(getDriver(), headerNumber).isDisplayed());
    }

    /**
     * Asserts that headings are in the correct order on overview page.
     * @param headingNumber is heading order on page
     * @param headingText is the heading to look for
     */
    @Then("^heading number \"([^\"]*)\" on the page is: \"([^\"]*)\"$")
    public void verifySectionOrder(final String headingNumber, final String headingText) {
        String actualText = OverviewPage.headerText(getDriver(), headingNumber).getText();
        assertTrue(actualText.equals(headingText));
    }

 }
