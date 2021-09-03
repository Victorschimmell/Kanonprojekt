//Sky
PVector c1 = new PVector(w,h/8);
PVector c2 = new PVector(w+100,h/8+20);
PVector c3 = new PVector(w+50,h/8-20);

void drawSky(){
  fill(245,245,245);
  noStroke();
  ellipse(c1.x,c1.y,200,80);
  ellipse(c2.x,c2.y,160,90);
  ellipse(c3.x,c3.y,120,60);
  if(c1.x<-200){
    c1.x = w+200;
  }else{
    c1.x = c1.x-0.5;
  }
  if(c2.x<-160){
    c2.x = w+160;
  }else{
    c2.x = c2.x-0.5;
  }
  if(c3.x<-120){
    c3.x = w+120;
  }else{
    c3.x = c3.x-0.5;
  }
}

//Level 1
int t1_w = 80;
int t1_h = 200;

void drawLevel(){
  noStroke();
  fill(#348C31);
  rect(0,h,w*2,h/2);
 
  fill(245,245,245);
  rect(w-w/6,h-t1_h+h/24,t1_w,t1_h);
}
