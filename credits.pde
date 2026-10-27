// code to allow the credits to run smoothly

void credits(int fCount) {
  background(0); //black background
  fill(50, 150, 255);    //blue fill
  textSize(26);
  textAlign(CENTER, CENTER);
  for (int n = 0; n < credits_digital_keele.length; n++)
    text(credits_digital_keele[n], width/2, 1100 - (fCount*3) + 50*n);
}
