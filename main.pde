// code for the drawing of the binary rain, tree and squirrel

void main(int fCount){

  // code for the movement of the backgrounds
  for (int n =0; n < 2; n ++){
    image(bg[n], -xpos[n], ypos[n]);
    image(bg[n], bg[n].width - xpos[n], ypos[n]);
    xpos[n] = (xpos[n]+rate[n]) % bg[n].width;
  }
  
// -------------------------- binary rain

  fill(color(50,150,200)); 
  fill(0,200,0);
  for(int n = 0; n < i.length; n ++){  
  text(round(random(1)), n *25, i[n]*20); // make the position, of where the rain falls from, random
  i[n] = (i[n] +2)%60;
  }
  
// -------------------------- binary rain

// -------------------------- tree
 
 sequence=1;
 noStroke();
 fill(100,40,0);
 translate(width/2 + 250,height);
 rect(-(branchWidth/2),0,branchWidth,-120); // The tree trunk
 translate(0,-120);
 branch(120); // Recursive ‘branch’ function
// -------------------------- tree

// -------------------------- squirrel
  image(squirrelFrames[index],-500,50);
  index = (index +1)%6;
  image(squirrel, -23,-55);
// -------------------------- squirrel

}

// -------------------------- tree

void branch(float h) {
 h*= 0.7; // branchlength = branchlength * r
 if (h > 20) {
 
 pushMatrix(); // Right-hand branch
 rotate(angle*noise(frameCount/150.0,100));
 rect(-h/20, 0, h/10, -h);
 //text(sequence++, 5, -h/2); //write sequence no.
 translate(0, -h);
 branch(h);
 
 
 popMatrix();
 // centre branch
 pushMatrix();
 rotate(0*noise(frameCount/150.0,1));
 rect(-h/20, 0, h/10, -h);
 translate(0,-h);
 branch(h);
 popMatrix();
 
 // Left-hand branch
 pushMatrix();
 
 rotate(-angle*noise(frameCount/150.0,50));
 rect(-h/20, 0, h/10, -h);
 //text(sequence++, 5, -h/2);
 translate(0, -h);
 branch(h);

 popMatrix();
 }
 else{
   pushStyle();
   noStroke();
   fill(255,190,200);
   ellipse(0, 0,10,15);
   popStyle();
 }
 
 // -------------------------- tree

}
