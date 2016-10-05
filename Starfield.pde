
Particle []starfield;
//your code here
void setup()
{
	//your code here
	  size(500, 500);
	  starfield = new Particle[1000];
	
	for (int i =0; i<500; i++){

		starfield[i] = new NormalParticle();

	}

}




void draw()
{
	//your code here
	background(0);
	for (int i=0;i<500; i++){
	starfield[i].show();
	starfield[i].move();
	}

}





class NormalParticle implements Particle
{
	//your code here
	// NormalParticle class. It will need the following members:
//5 member variables: X and Y positions, Color, Angle and Speed. (Hint: use doubles for X, Y, Speed and Angle)



	double starX;
	double starY;
	double starSpeed;
	double starDirection; //double starTheta;
	//int starColor; 

	int r; 
	int b; 
	int g;
	int starSize; 



	NormalParticle()
{

//First we choose a random direction: dTheta is a random decimal from 0 to 2*Math.PI
//Then we choose a random speed: dSpeed is a random decimal between 0 and 10
//We'll have all the particles start from the same position: dX and dY are initialized to 320 and 240

	starX= 250;
	starY= 250;
	starDirection = Math.random()*2*Math.PI;
	//starDirection= (Math.random()*2)+100;
	starSpeed =(Math.random()*8)+1;
	//(Math.random()*8)+0.001;
	//(Math.random()*1)+10;



	//starColor = (int)(Math.random()*255);

	starSize= (int)((Math.random()*5)+25);

	r = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
    g = (int)(Math.random()*255);

}


	public void move()
{
 //Takes the cos of the angle times the speed and adds it to the X coordinate. Does the same to Y with the sin of the angle
 	starX = starX+ Math.cos(starDirection)*starSpeed;
 	starY = starY+ Math.sin(starDirection)*starSpeed;

 	if (mousePressed){
		starX = mouseX;
		starY = mouseY;
 	}


}


	public void show()
	{

	noStroke();
	fill(r,g,b.5);
   ellipse((float)starX,(float)starY, starSize, starSize);

	}

}



interface Particle
{
	public void move();
	public void show();
}







class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

