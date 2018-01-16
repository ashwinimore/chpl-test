# CHPL Automated Testing Suite

Based on Selenium-cucumber: Automation Testing Using Java Automation test framework and automated tests for regression and acceptance testing of chpl website.

## Test framework built with:

* Eclipse - IDE
* Maven - Dependency Management
* Selenium Webdriver - Java
* Cucumber - Gherkin
* TestNG


## Prerequisites
* Java
* Maven
* Eclipse
* Eclipse Plugins
* Cucumber
* Chromedriver


## Getting started

* Install Java and set path
* Install Maven and set path - Maven: https://maven.apache.org/download.cgi
* Install Maven plugin in eclipse
* Install cucumber plugin in eclipse
* Clone this repository: https://github.com/chpladmin/chpl-test.git
* Install chromedriver and set it on your PATH

## Writing a test

The cucumber features go in the src/test/resources/Features directory and should have the ".feature" extension.

Each test in feature has code in related StepDefinition and is 'glued' together using runner class.

To run cucumber tests open a command prompt go to project directory where the project is saved and run command

`mvn test`

To run only a single feature file, run the command

`mvn test -Dcucumber.options="src/test/resources/Features/filename.feature"`

If your console does not support color, enable monochrome with:

`mvn test -Dcucumber.options="-m"`

## View Reports Reports generated after test run are saved at:

target/cucumber-html-report
