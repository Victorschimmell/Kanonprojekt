//Baggrund
float bgColor = 190;
boolean bgChange = true;

//menu
int buttonWidth = w/5;
int buttonHeight = h/8;

//Button functions
void drawButton(String b, int c) {
  if (b=="home") {
    pushMatrix();
    translate(50, 50);
    noFill();
    stroke(0, 0, 0, c);
    strokeWeight(5);
    ellipse(0, 0, 100*0.7, 100*0.7);
    //Hus
    noStroke();
    fill(0, 0, 0, c);
    rectMode(CORNER);
    rect(-(49*0.7)/2, 15*0.7-1.5, 15*0.7, 20*0.7);
    rect((49*0.7)/2-15*0.7, 15*0.7-1.5, 15*0.7, 20*0.7);
    rectMode(CENTER);
    rect(0, 2, 49*0.7, 20*0.7);
    triangle(-35*0.7, -5, 35*0.7, -5, 0, -30*0.7);
    popMatrix();
  }
}


//UI & scene
void drawUI() {
  if (scene==0) { //Main menu
    noStroke();
    textSize(75);
    fill(80, 80, 80);
    rectMode(CENTER);
    textAlign(CENTER);
    text("Kanonprojekt / TargetPractice", width/2, height*1/5);
    textSize(30);
    text("Edward, Nicklas, Peter & Victor S", width/2, height*1/5+height*1/12);
    //Draw buttons
    pushMatrix();
    translate(w/2, h/2);
    //button_bg
    //button_1
    if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight) {
      fill(0, 0, 0, 70);
      rect(0, 0, buttonWidth, buttonHeight, 10, 10, 10, 10);
    } else {
      fill(0, 0, 0, 40);
      rect(0, 0, buttonWidth, buttonHeight, 10, 10, 10, 10);
    }
    //button_2
    if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight) {
      fill(0, 0, 0, 70);
      rect(0, buttonHeight+buttonHeight/6, buttonWidth, buttonHeight, 10, 10, 10, 10);
    } else {
      fill(0, 0, 0, 40);
      rect(0, buttonHeight+buttonHeight/6, buttonWidth, buttonHeight, 10, 10, 10, 10);
    }

    //button_3
    if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6) {
      fill(0, 0, 0, 70);
      rect(0, (buttonHeight+buttonHeight/6)*2, buttonWidth, buttonHeight, 10, 10, 10, 10);
    } else {
      fill(0, 0, 0, 40);
      rect(0, (buttonHeight+buttonHeight/6)*2, buttonWidth, buttonHeight, 10, 10, 10, 10);
    }

    //button_text
    textSize(50);
    fill(bgColor+40, bgColor+40, bgColor+40);
    text("Options", 0, buttonHeight+buttonHeight/6, buttonWidth, buttonHeight-30);
    text("Exit game", 0, (buttonHeight+buttonHeight/6)*2, buttonWidth, buttonHeight-30);
    text("Play", 0, 0, buttonWidth-buttonWidth/2, buttonHeight-30);
    popMatrix();
  } else if (scene==1) {
    if (mouseX>15 && mouseY>15 && mouseX<85 && mouseY<85) {
      drawButton("home", 70);
    } else {
      drawButton("home", 40);
    }
  }
}

//Buttons UI
void mousePressed() {
  if (scene==0) {
    if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight) {
      scene = 1;
    } else if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight) {
      scene = 2;
    } else if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6) {
      exit();
    }
  } else if (scene==1) {
    if (mouseX>15 && mouseY>15 && mouseX<85 && mouseY<85) {
      scene = 0;
    }
  }
}

void updateBackground() {
  // Vores betingelser tjekker, om farven skal blive lysere eller mørkere ved hjælp af vores boolean variabel; bgT
  if (scene==0) {
    background(bgColor, bgColor, bgColor);
    if (bgChange == true) { 
      if (bgColor>140) {
        bgColor = bgColor-0.5;
      } else {
        bgChange = false;
      }
    } else {
      if (bgColor<190) {
        bgColor = bgColor+0.5;
      } else {
        bgChange = true;
      }
    }
  }
  if (scene==1) {
    background(bgColor, 200, 250);
    if (bgChange == true) { 
      if (bgColor>140) {
        bgColor = bgColor-0.5;
      } else {
        bgChange = false;
      }
    } else {
      if (bgColor<180) {
        bgColor = bgColor+0.5;
      } else {
        bgChange = true;
      }
    }
  }
}
