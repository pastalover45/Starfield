
Particle []starfield;
//your code here
void setup()
{
	//your code here
	  size(700,750);
	  starfield = new Particle[1000];
	
	for (int i =0; i<500; i++){

		starfield[i] = new NormalParticle();
	}

	starfield[300] = new OddballParticle();

}




void draw()
{
	//your code here
	 background(2, 13, 32);
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
	starX= 250;
	starY= 250;
	starDirection = Math.random()*2*Math.PI;
	//starDirection= (Math.random()*2)+100;
	starSpeed =(Math.random()*8)+1;
	//(Math.random()*8)+0.001;
	//(Math.random()*1)+10;

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
	fill(r,g,b);
   ellipse((float)starX,(float)starY, starSize, 0.5);

	}




}




interface Particle
{
	public void move();
	public void show();
}







class OddballParticle implements Particle //uses an interface
{
	
	double oddX;
	double oddY;
	double oddSpeed;
	double oddDirection;

	int oddSize;
	int oddColor;

	OddballParticle(){
		oddX= 250;
		oddY= 250;
		oddDirection =Math.random()*3*Math.PI;
		oddSpeed =5;
		oddSize= 10;
		oddColor = (int)(Math.random()*255);

	}


	public void move(){
	oddX= oddX+Math.cos(oddDirection)*oddSpeed;
	oddY= oddY+Math.sin(oddDirection)*oddSpeed;

	if(mousePressed){

			//oddDirection =Math.random()*2*Math.PI;
			oddX = mouseX -45;
			oddY = mouseY -45;
		}

}

		public void show(){

		fill(255,255,255);
		noStroke();
		ellipse((float)oddX,(float)oddY,oddSize,oddSize);

	}



}


//uses inheritance

class JumboParticle extends NormalParticle
{
	JumboParticle(){

		// nA=255; //opaqicity 
		// nG=255; //color

		// nWH =100; // size
	}
}