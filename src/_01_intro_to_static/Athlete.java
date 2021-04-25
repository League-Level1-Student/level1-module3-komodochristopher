package _01_intro_to_static;

public class Athlete {
	 static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;

	    Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	    }

	    public static void main(String[] args) {
	        //create two athletes
	    	String race1 = "Athlete1";
	    	String race2 ="Athlete2";
	        //print their names, bibNumbers, and the location of their race. 
	    	

	    	
	    	System.out.println(race1 + " ,bib number 1" + ",New York ");
	    	
	    	System.out.println(race2+ " ,bib number 2" + ",New York ");
	    	
	    }
}
