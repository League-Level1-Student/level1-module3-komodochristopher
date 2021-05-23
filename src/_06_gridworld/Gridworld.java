package _06_gridworld;

import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
public static void main(String[] args) {
Flower f = new Flower();

	Color c = new Color	(0,0,255);
	Location l = new Location(2,2);
	Location k = new Location(5,5);
	Location j = new Location(5,6);
	Location t = new Location(5,4);
	Location y = new Location(2,3);
	Location o = new Location(2,1);
World g = new World();
Bug b = new Bug();	
	

g.show();
b.getLocation();	
g.add(l, b);
g.add(k, b);	
b.setColor(c);
b.turn();
g.add(j, f);
g.add(t, f);
g.add(y, f);	
g.add(o, f);	
	for(int i=0; i<10; i++) {
		for(int p=0;p<10; p++) {
			Location n = new Location(i,p);
			Flower d = new Flower();
			g.add(n, d);
		}
	}
	
	
	
	
	
	
	
	
}




}
