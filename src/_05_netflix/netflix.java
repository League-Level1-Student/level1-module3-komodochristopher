package _05_netflix;

public class netflix {
public static void main(String[] args) {

	Movie m = new Movie("Hallow", 5);
	Movie s = new Movie("I didnt do it, I swear", 3);
	Movie j = new Movie("mechs vs monsters", 2);
	Movie l = new Movie("Godzilla vs Kong", 4);
	Movie g = new Movie("REEE", 1);
	NetflixQueue n =  new NetflixQueue();
	
	
	
	
	n.addMovie(m);
	n.addMovie(s);
	n.addMovie(j);
	n.addMovie(l);
	n.addMovie(g);
	n.sortMoviesByRating();
System.out.println(m);
System.out.println(	m.getTicketPrice());
System.out.println(s);
System.out.println(j);
System.out.println(l);
System.out.println(g);
System.out.println(n.getMovie(0));
System.out.println(n.getMovie(1));
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
}
