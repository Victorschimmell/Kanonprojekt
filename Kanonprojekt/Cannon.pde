void drawCannon(){
  
  //Bare en gammel hjul fra en vikingtanks
  
   //Hjul_1
  fill(#654321);
  stroke(0);
  strokeWeight(1);
  ellipse(210,h-h/12*2+40,100,100);
  
  //Hjuldesign til hjul 1
  fill(#42291A);
   pushMatrix();
stroke(0);
  strokeWeight(0.5);
   translate(210,h-h/12*2+40);
  rotate(radians(PI*200));
  rect(0,0,5,100);
  popMatrix();
  
  //Kanon
  fill(#323334); 

  pushMatrix();
  //Start definationer
  stroke(0);
  strokeWeight(1);
   translate(100,h-h/12-10);
  rotate(radians(-PI*13));
  
  //Normalizing af en vektor, 
  PVector mouse = new PVector(mouseX,mouseY);
  mouse.normalize();
  mouse.mult(300);
  strokeWeight(40);
  line(x,y,mouse.x,mouse.y);
  popMatrix();
  
  
  //Hjul_2
  fill(#654321);
  stroke(0);
  strokeWeight(1);
ellipse(200,h-h/12*2+45,100,100);

 noStroke();  
 
//Hjuldesign til hjul 1
fill(#42291A);

pushMatrix();
stroke(0);
  strokeWeight(0.5);
   translate(200,h-h/12*2+46);
  rotate(radians(-PI*10));
  rect(0,0,5,100);
  popMatrix();
 
 pushMatrix();
stroke(0);
  strokeWeight(0.5);
   translate(200,h-h/12*2+46);
  rotate(radians(PI*10));
  rect(0,0,5,100);
  popMatrix();
 
 pushMatrix();
stroke(0);
  strokeWeight(0.5);
   translate(200,h-h/12*2+46);
  rotate(radians(PI*200));
  rect(0,0,5,100);
  popMatrix();
}
