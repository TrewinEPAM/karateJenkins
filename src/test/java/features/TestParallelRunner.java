package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
//import com.intuit.karate.junit5.Karate.Test;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import static org.junit.jupiter.api.Assertions.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;


public class TestParallelRunner {

	//@Test
	public void hello() {
		System.out.println("pppp");
	}
	
	
    @Test
    void testParallel() {
    	System.out.println("12323");
        Results results = Runner.path("classpath:features").outputCucumberJson(true).parallel(2);
       // assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
    
//    @Test
//    public void testParallel() {
//    	System.out.println("here 2");
//        Results results = Runner.path("features")
//                .outputCucumberJson(true)
//               // .karateEnv("demo")
//                .parallel(5);
//        generateReport(results.getReportDir());
//
//    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "demo");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
    
}
