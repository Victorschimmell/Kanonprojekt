float bgColor = 240;
boolean bgChange = true;

void updateBackground(){
  // Vores betingelser tjekker, om farven skal blive lysere eller mørkere ved hjælp af vores boolean variabel; bgT
  if(bgChange == true){ 
    if(bgColor>180){
      bgColor = bgColor-0.5;
    }else{
      bgChange = false;
    }
  }else{
    if(bgColor<220){
      bgColor = bgColor+0.5;
    }else{
      bgChange = true;
    }
  }
  background(bgColor,bgColor,bgColor);
}
