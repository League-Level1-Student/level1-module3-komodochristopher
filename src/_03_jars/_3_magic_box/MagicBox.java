package _03_jars._3_magic_box;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MagicBox extends JPanel implements Runnable, MouseListener {
MediaPalace p = new MediaPalace();
	/*
	 * We are going to hide secrets within the magic box. When the user clicks on a
	 * secret place, stuff will happen.
	 * 
	 * 1. Make the frame respond to mouse clicks.
	 *
	 * 2. When the mouse is clicked, use the Media Palace (read the code in the
	 * magic_box package) to play sounds, show images or speak.
	 * 
	 * 3. Choose 3 different locations on the background image.You can either use
	 * the mouse position, or the color of the image, then decide what action the
	 * Media Palace should take in each case. backgroundImage.getRGB(e.getX(),
	 * e.getY()) will give you the color of the current pixel.
	 * 
	 * 
	 * 
	 */

	BufferedImage backgroundImage;

	@Override
	public void run() {
		try {
			loadBackgroundImage();
			createUI();
		} catch (Exception w) {
			System.err.println(w.getMessage());
		}
		
	}

	private void createUI() {
		JFrame frame = new JFrame("The Magic Box contains many secrets...");
		frame.add(this);
		setPreferredSize(new Dimension(backgroundImage.getWidth(), backgroundImage.getHeight()));
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		frame.addMouseListener(this);
		frame.getMousePosition();
	}

	private void loadBackgroundImage() throws Exception {
		String imageFile = "src/_03_jars/_3_magic_box/magic-box.jpg";
		try {
			backgroundImage = ImageIO.read(new File(imageFile));
		} catch (IOException e) {
			throw new Exception("Could not load image: " + imageFile);
		}
	}

	@Override
	public void paintComponent(Graphics g) {
		g.drawImage(backgroundImage, 0, 0, null);
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub

try {
	p.loadImageFromTheInternet("https://c.shld.net/rpx/i/s/i/spin/10151633/prod_1650358312??hei=64&wid=64&qlt=50");
	p.loadImageFromTheInternet("https://www.google.com/url?sa=i&url=https%3A%2F%2Ffourloko.com%2Fbest-memes-of-2020%2F&psig=AOvVaw2r_czJ2YnHIZYCn3gR4cEL&ust=1619397395450000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJjw-MeTmPACFQAAAAAdAAAAABAs");
} catch (MalformedURLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
	
}
		
	

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		int i = backgroundImage.getRGB(e.getX(),
				 e.getY());
	System.out.println(i);
	System.out.println(e.getX()+ ","+ e.getY());
		if(i == -13815242) {
			MediaPalace.speak("did you know there is another button around here? Nah, there isnt. ");
		
			
		}
if(e.getX() < 343 + 10 && e.getX() > 343-10 && e.getY() <174 + 10 && e.getY() > 174-10 ) {
	System.out.println("hi");
	MediaPalace.speak("wow,  you found the last one. ereh dnuora nottub rehtona si erehT ?");

}

if(e.getX() < 192 + 10 && e.getX() > 192-10 && e.getY() < 856 + 10 && e.getY() > 856-10 ) {
	System.out.println("hi");
	MediaPalace.speak("Nice,  you found thethe second one. But can you find the third one?");

}
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub

	}

}
