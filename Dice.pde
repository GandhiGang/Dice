
void setup()
{
	size(500, 600);
	noLoop();
	textAlign(CENTER, CENTER);

}
void draw()
{
	background(128);
	int total = 0;
	for(int i = 0; i<500; i+=10){
		for(int j = 0; j<500; j+=10){
			Die gamer = new Die(i,j);
			gamer.show();
			total+=gamer.dots;
		}	
	}
	text("Total roll: " + total, 250, 550);
}
void mousePressed()
{
	redraw();

}
class Die //models one single dice cube
{
	int x, y, dots;
	
	Die(int a, int b) //constructor
	{
		x = a;
		y = b;
		roll();
	}
	void roll()
	{
		dots = (int)(Math.random()*6+1);
	}
	void show()
	{
		noStroke();
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		rect(x, y, 10, 10);
		stroke(0);
		if(dots%2==1){
			ellipse(x+5, y+5, 1, 1);
		}
		if(dots>=2){
			ellipse(x+2, y+8, 1, 1);
			ellipse(x+8, y+2, 1, 1);
		}
		if(dots>=4){
			ellipse(x+2, y+2, 1, 1);
			ellipse(x+8, y+8, 1, 1);
		}
		if(dots==6){
			ellipse(x+2, y+5, 1, 1);
			ellipse(x+8, y+5, 1, 1);
		}
	}
}
