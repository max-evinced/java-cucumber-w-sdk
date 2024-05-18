
# Evinced SDK w/ Local SDK install - usage example:
## Java Selenium v4.x + Cucumber BDD v6.x
follow installation step https://developer.evinced.com/sdks-for-web-apps/selenium-java-sdk#installation
taken from https://github.com/GetEvinced/web-sdks-examples/tree/master/selenium/java/selenium4-cucumber6

## Install/setup
1. get SDK + POM file
2. `mvn install:install-file –DFile=/Users/mdobeck/Downloads/selenium-sdk-3.3.4.jar -DpomFile=/Users/mdobeck/Downloads/selenium-sdk-3.3.4.pom` or put it in a new directory with the pom.xml and other files.
3. Observe the external Evinced jar is installed in `$HOME/.m2/..etc..etc../`


## Reporting
  
  Cucumber HTML reports are being generated in `./reports/` directory.

  Evinced SDK HTML and JSON reports generated using `evSaveFile()` method are available at `./evinced-report/<report_name>.<report_format>`.
  
