//your code here
void setup()
{
	//your code here
	  size(500, 500);
	  background(0,0,0);

}




void draw()
{
	//your code here
}





class NormalParticle implements Particle
{
	//your code here
	// NormalParticle class. It will need the following members:
//5 member variables: X and Y positions, Color, Angle and Speed. (Hint: use doubles for X, Y, Speed and Angle)

	double starX;
	double starY;
	double starSpeed;
	double starDirection;
	int starColor; 
	//= (int)(Math.random()*255);

	//
	NormalParticle()
{

	starX= mouseX;
	starY= mouseY;
	starDirection= (Math.random()*2)+100);
	starColor = (int)(Math.random()*255);





}


	public void move()
	{
 //Takes the cos of the angle times the speed and adds it to the X coordinate. Does the same to Y with the sin of the angle
//nX = nX+ Math.cos(nTheta)*nSpeed;
//nY = nY+ Math.sin(nTheta)*nSpeed;




	}


	public void show()
	{

	}













}

interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

