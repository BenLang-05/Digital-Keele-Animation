//Processing sketch creating a 2.5D "digital keele" style animation
// including a moving background of keele (2.5D style), a cherry blossom tree, a moving squirrel and binary rain

String[] credits_digital_keele; //variable for the credits
int sequence; // Drawing sequence order
float angle=PI/4;// Angle between branches
float branchWidth = 10;
int a = 0;
int [] i = new int[80];

PImage squirrel;
PImage squirrel2;
PImage[] squirrelFrames = new PImage[6]; //storing each of the squirrel frames in an arry
int index = 0;
PImage[] bg = new PImage[2]; //storing both backgrounds in an array

// storing positions of backgrounds in an array
int[] xpos = new int[2];
int[]ypos = new int[2];
int[] rate = new int[2];
int j = 0;

void setup() {
 fullScreen();

credits_digital_keele = loadStrings("credits_digital_keele.txt");

// --------------------------- squirrel

 squirrel = loadImage("squirrel.png"); // load squirrel image file
 squirrel2 = loadImage("squirrel2.png"); // load second squirrel image file
 for(int n = 0; n <6; n ++){
   squirrelFrames[n] = squirrel2.get(n *squirrel2.width/6, 0, squirrel2.width/6, squirrel2.height); // allow second squirrel image to be cut up to be used as an animation
 }
// --------------------------- squirrel

 
// --------------------------- background

 bg[0] = loadImage("bg.png"); // load first background
 bg[1] = loadImage("bg_clouds.png"); // load second background
 ypos[0] = 540; rate[0] = 3; // set background to y position 540 and moving speed to 3
 ypos[1] = 0; rate[1] = 2; // set second background to y position 0 and moving speed to 2
 
 // --------------------------- background

 // -------------------------- binary rain
 
 frameRate(20);
 textSize(20);
 for(int n = 0; n < i.length; n++){
   i[n] = round(random(60));}

// -------------------------- binary rain

}
void draw() {

 
 // using the values below to determine which scene is playing at the current frame count
if(frameCount < 1000)
  main(frameCount);
  else if (frameCount > 999 && frameCount < 2000)
    credits(frameCount-1000);
  

}
