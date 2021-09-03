//Baggrund
float bgColor = 190;
boolean bgChange = true;

//Menu
int buttonWidth = w/5;
int buttonHeight = h/8;

//UI & Menu
void drawUI(){
  if(menu==0){ //Main menu
    //Draw buttons
    pushMatrix();
    translate(w/2,h/2);
    //button_bg
    //button_1
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight);
    }
    //button_2
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      fill(0,0,0, 70);
      rect(0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight);
    }
    
    //button_3
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      fill(0,0,0, 70);
      rect(0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight);
    }
    
    //button_text
    textSize(50);
    fill(bgColor+40,bgColor+40,bgColor+40);
    text("Options",0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight-30);
    text("Exit game",0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight-30);
    text("Play",0,0,buttonWidth-buttonWidth/2,buttonHeight-30);
    popMatrix();
  }
}

//Buttons UI
void mousePressed(){
  if(menu==0){
    translate(w/2,h/2);
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight){
      menu = 1;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      menu = 2;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      exit();
    }
  }
}

void updateBackground(){
  // Vores betingelser tjekker, om farven skal blive lysere eller mørkere ved hjælp af vores boolean variabel; bgT
  if(menu==0){
    background(bgColor,bgColor,bgColor);
    if(bgChange == true){ 
      if(bgColor>140){
        bgColor = bgColor-0.5;
      }else{
        bgChange = false;
      }
    }else{
      if(bgColor<190){
        bgColor = bgColor+0.5;
      }else{
        bgChange = true;
      }
    }
  }if(menu==1){
    background(bgColor,200,250);
    if(bgChange == true){ 
      if(bgColor>140){
        bgColor = bgColor-0.5;
      }else{
        bgChange = false;
      }
    }else{
      if(bgColor<180){
        bgColor = bgColor+0.5;
      }else{
        bgChange = true;
      }
    }
  }
}
