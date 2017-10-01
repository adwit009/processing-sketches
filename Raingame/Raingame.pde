int ypos= 0;
int xpos= 200;

void setup(){
  size(500,500);

}
  void draw(){
  background(250,18,18);
  ellipse(xpos,ypos,10,20);
  fill(69,168,252);
  stroke(0,0,0);
  ypos=ypos+3;
  rect(mouseX,450, 100, 50);
  if (ypos>500){
    xpos=(int) random(width);
    ypos=0;
    checkCatch(xpos);
   
    
  }
  }
 void checkCatch(int x){
  
   
  int score=0;
if (x > mouseX && x < mouseX+100){
      score++;
}
   else if (score > 0){
     score--;
   }
println("Your score is now: " + score);
 fill(0,0,0);
   textSize(16);
   text("Score:"+score, 20, 20);
   

}

 