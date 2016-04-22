package core;

//import org.testng.TestNG;

public class Calc {
	public String concatenate(String one, String two)
	{
		return one+two;
	}

	public Integer multiply(Integer digital_one, Integer digital_two)
	{
		return digital_one*digital_two;
	}
	
	public boolean TrueorFalse(int i, int j){
		
		if (i>j) return true;
		if (i<j) return false;
		else return false;
		
	}


	public static void main(String[] args) throws ClassNotFoundException {
		//Calc test = new Calc();
         //test.setTestClasses(new Class[] { Calc_TestNG.class });
         //test.run();
    }


}
