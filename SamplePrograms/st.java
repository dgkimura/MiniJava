class Main {
    public static void main (String[] vargs)
	{ System.out.println(vargs[0]); }
}

class A {}

class B extends A {}


class Element extends A {
	int Age;          
	int Salary;
	boolean Married ;
}

class Zahr extends Element {
	public boolean Init(int v_Age, int v_Salary, boolean v_Married){
		Age = v_Age ;
		Salary = v_Salary ;
		Married = v_Married ;
		return true;
	}
}

class Dard extends Zahr {
	public int Kooft(int vAge){
		return (Age < v_Age);
	}

	public int Kooft(int Age){
		return (Age < 0);
	}

	public boolean Init(int v_Age, int v_Salary, int v_Married){
		Age = v_Age ;
		Salary = v_Salary ;
		Married = v_Married ;
		
		return true;
    }
}

class Element1 {
	int Age ;          
	int Salary ;
	boolean Married ;
	
	// Initialize some class variables
	public boolean Init(int v_Age, int v_Salary, boolean v_Married){
		Age = v_Age ;
		Salary = v_Salary ;
		Married = v_Married ;
		return true;
	}
	
	public int GetAge(){
		return age;
	}
	
	public int GetSalary(){
		return Salary + this.getAge();
	}
	
	public boolean GetMarried(){
		return Married;
	}
	
	// This method returns true if the object "other"
	// has the same values for age, salary and 
	public boolean Equal(Element other){
		boolean ret_val ;
		int aux01 ;
		int aux02 ;
		int nt ;
		ret_val = true ;
		
		aux01 = other.GetAge();
		if (!this.Compare(aux01,Age)) ret_val = false ;
		else { 
			aux02 = other.GetSalary();
			if (!this.Compare(aux02,Salary)) ret_val = false ;
			else 
				if (Married) 
					if (!other.GetMarried()) ret_val = false;
					else nt = 0 ;
					else
						if (other.GetMarried()) ret_val = false;
						else nt = 0 ;
		}
		
		return ret_val ;
	}
	
	// This method compares two integers and
	// returns true if they are equal and false
	// otherwise
	public boolean Compare(int num1 , int num2){
		boolean retval ;
		int aux02 ;
		retval = false ;
		aux02 = num2 + 1 * 12 + ((aux02 + 2) - 3) * 4 + (10 - 2);
		if (num1 < num2) retval = false ;
		else if (!(num1 < aux02)) retval = false ;
		else retval = true ;
		return retval ;
	}
}

