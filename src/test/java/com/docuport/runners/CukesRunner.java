package app.docuport.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"json:target/cucumber.json",
                  "html:target/default-html-reports"},
        features = "src/test/resources/features/",
        glue = "app/docuport/step_definitions/",
        tags = "" ,
        dryRun = true // dry run only runs the methods , but not the code inside
)
public class CukesRunner {
}

   // run -> mvn clean test 
