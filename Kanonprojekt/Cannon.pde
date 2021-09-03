void drawCannon(){
  
  //Bare en gammel hjul fra en vikingtanks
  
   //Hjul_1
  fill(#654321);
  stroke(0);
  strokeWeight(1);
  ellipse(210,h-h/12*2+40,100,100);
  
  //Kanon
  fill(#323334);
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
   translate(230,h-h/11*2);
  rotate(radians(-PI*9.5));
  rect(0,0,300,45);
  popMatrix();
  
  //Hjul_2
  fill(#654321);
  stroke(0);
  strokeWeight(1);
ellipse(200,h-h/12*2+45,100,100);

  noStroke();  
}
