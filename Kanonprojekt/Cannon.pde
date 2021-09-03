void drawCannon(){
  
  //Bare en gammel hjul fra en vikingtanks
  
   //Hjul_1
  fill(#654321);
  stroke(0);
  strokeWeight(1);
<<<<<<< Updated upstream
  ellipse(220,h-h/14*2+40,80,80);
=======
ellipse(210,h-h/12*2+30,110,110);
>>>>>>> Stashed changes
  
  //Kanon
  fill(#323334);
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
   translate(230,h-h/11*2+20);
  rotate(radians(-PI*10));
  rect(0,0,275,40);
  popMatrix();
  
  //Hjul_2
  fill(#654321);
  stroke(0);
  strokeWeight(1);
ellipse(200,h-h/12*2+30,110,110);

<<<<<<< Updated upstream
  noStroke();  
=======
  noStroke();
>>>>>>> Stashed changes
}
