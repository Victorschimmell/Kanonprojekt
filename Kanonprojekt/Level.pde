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
