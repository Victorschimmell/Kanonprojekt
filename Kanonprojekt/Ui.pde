float bgColor = 190;
boolean bgChange = true;

void updateBackground(){
  // Vores betingelser tjekker, om farven skal blive lysere eller mørkere ved hjælp af vores boolean variabel; bgT
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
  background(bgColor,bgColor,bgColor);
}
