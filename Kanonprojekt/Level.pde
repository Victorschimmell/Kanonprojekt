//Level 1
int t1_w = 80;
int t1_h = 200;

void drawLevel(){
  fill(70,70,70);
  rect(0,h,w*2,h/6);
  
  fill(245,245,245);
  rect(w-w/6,h-t1_h+h/24,t1_w,t1_h);
}
