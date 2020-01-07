package gov.healthit.chpl.aqa.stepDefinitions;

import static io.restassured.RestAssured.given;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.io.FileHandler;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.events.AbstractWebDriverEventListener;
//import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.openqa.selenium.support.events.WebDriverEventListener;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;

/**
 * Class Hooks definition.
 */
public class Hooks {

    private static File dir;
    private static WebDriver driver;
    private static final int DELAY = 30;
    private static String screenshotPath;
    private static String downloadPath = System.getProperty("downloadPath");

    /**
     * Launch ChromeDriver.
     */
    @Before("~@RegressionAPI")
    public void openBrowser() {
        /* To run chrome with the developer tools window automatically opened re-able these lines.
         *
        ChromeOptions chromeOptions = new ChromeOptions();
        chromeOptions.addArguments("--auto-open-devtools-for-tabs");
        driver = new ChromeDriver(chromeOptions);
        driver.manage().window().maximize(); // does not work on CI machine, sometimes useful locally
         */
        if (StringUtils.isEmpty(downloadPath)) {
            String tempDirectory;
            try {
                tempDirectory = Files.createTempDirectory("download-files").toString();
                // Print the path to the newly created directory
            } catch (final IOException e) {
                // If temp directory creation failed, create new directory in target folder
                // user.dir - User working directory, make new directories in user's working directory
                File file = new File("target", "download-files");
                file.mkdirs();
                tempDirectory = System.getProperty("user.dir") + File.separator + "target" + File.separator + "download-files";
            }
            downloadPath = tempDirectory;
        }
        dir = new File(downloadPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
//        HashMap<String, Object> chromePrefs = new HashMap<String, Object>();
//        chromePrefs.put("profile.default_content_settings.popups", 0);
//        chromePrefs.put("download.default_directory", downloadPath);
//        /**
//         * Save Chrome Options
//         */
//        ChromeOptions options = new ChromeOptions();
//        HashMap<String, Object> chromeOptionsMap = new HashMap<String, Object>();
//        options.setExperimentalOption("prefs", chromePrefs);
//        chromePrefs.put("safebrowsing.enabled", "true");
//        options.addArguments("--safebrowsing-disable-download-protection");
//        options.addArguments("disable-popup-blocking");
//
//        DesiredCapabilities cap = DesiredCapabilities.chrome();
//        cap.setCapability(ChromeOptions.CAPABILITY, chromeOptionsMap);
//        cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
//        cap.setCapability(ChromeOptions.CAPABILITY, options);
        System.setProperty("webdriver.gecko.driver",downloadPath+ File.separator + "geckodriver.exe");
        
        screenshotPath = System.getProperty("user.dir") + File.separator + "test-output";
        
        FirefoxOptions options = new FirefoxOptions();
        options.setCapability("download.default_directory", downloadPath);
        //driver = new EventFiringWebDriver(new ChromeDriver(cap));
        driver = new FirefoxDriver(options);
        driver.manage().timeouts().implicitlyWait(DELAY, TimeUnit.SECONDS);
        WebDriverEventListener errorListener = new AbstractWebDriverEventListener() {
            @Override
            public void onException(final Throwable throwable, final WebDriver activeDriver) {
                try {
                    takeScreenshot();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        //driver.register(errorListener);
    }

    /**
     * Close browser windows and terminate WebDriver session.
     */
    @After("~@RegressionAPI")
    public void afterMethod() {
        driver.quit();
    }

    public static WebDriver getDriver() {
        return driver;
    }

    public static File getDownloadDirectory() {
        return dir;
    }

    /**
     * Take a screenshot.
     * @param hash a string that will be inserted into the filename to avoid overwriting images.
     * All "non-word characters" will be replaced with "_"
     * @throws Exception if there is an exception
     */
    public static void takeScreenshot(final String hash) throws Exception {
        File scrFile = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.FILE);
        File outFile = new File(screenshotPath + File.separator + "failed-test-" + hash.replaceAll("\\W+", "_") + ".png");
        FileHandler.copy(scrFile, outFile);
    }

    /**
     * Take a screenshot. Generates hash based on current time.
     * @throws Exception if screenshot cannot be created
     */
    public static void takeScreenshot() throws Exception {
        String hash = String.valueOf(new Date().getTime());
        takeScreenshot(hash);
    }
    

}
