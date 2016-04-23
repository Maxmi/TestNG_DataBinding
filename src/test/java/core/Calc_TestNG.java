package core;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.AfterSuite;

public class Calc_TestNG {
  @BeforeMethod
  public void beforeMethod() {
  }

  @AfterMethod
  public void afterMethod() {
  }

  @BeforeClass
  public void beforeClass() {
  }

  @AfterClass
  public void afterClass() {
  }

  @BeforeTest
  public void beforeTest() {
  }

  @AfterTest
  public void afterTest() {
  }

  @BeforeSuite
  public void beforeSuite() {
  }

  @AfterSuite
  public void afterSuite() {
  }

//Negative
  @Test(enabled = true)
  public void TrueorFalse_test_01() {
	  Calc test_01 = new Calc();
	  Assert.assertFalse(test_01.TrueorFalse(1, 2));
		//assertFalse(test_01.TrueorFalse(1, 2));
    //throw new RuntimeException("Test not implemented");
  }

//Positive
  @Test(enabled = true)
  public void TrueorFalse_test_02() {
	  Calc test_02 = new Calc();
	  Assert.assertFalse(test_02.TrueorFalse(2, 1));
		//assertFalse(test_01.TrueorFalse(1, 2));
    //throw new RuntimeException("Test not implemented");
  }

//Negative
@Test(enabled = true)
  public void concatenate_test_03() {
	Calc test_03 = new Calc();
	//Assert.assertEquals(actual, expected);
	  Assert.assertEquals(test_03.concatenate("FA", "Q"), "QA");
    //throw new RuntimeException("Test not implemented");
  }

//Positive
@Test(enabled = true)
public void concatenate_test_04() {
	Calc test_04 = new Calc();
	Assert.assertEquals(test_04.concatenate("Q", "A"), "QA");
  //throw new RuntimeException("Test not implemented");
}

//Negative
  @Test(enabled = true)
  public void multiply_test_05() {
	  Calc test_05 = new Calc();
		Assert.assertEquals(test_05.multiply(5, 4), Integer.valueOf(25));
	   //throw new RuntimeException("Test not implemented");
  }
  
//Positive
  @Test(enabled = true)
  public void multiply_test_06() {
	  Calc test_06 = new Calc();
		Assert.assertEquals(test_06.multiply(5, 5), Integer.valueOf(25));
	   //throw new RuntimeException("Test not implemented");
  }
  
		//Ignore
		  @Test(enabled = false)
		  public void multiply_test_07() {
			  Calc test_07 = new Calc();
				Assert.assertEquals(test_07.multiply(5, 5), Integer.valueOf(25));
			   //throw new RuntimeException("Test not implemented");
  }
}
