
void setup(){
size(500,500);
}
int birdX = 250;
int birdY = 10;
double velocity = 15;
double gravity = 6;
boolean hi = true;
int x = -20;
int y = 50;
int score = 0;
int gaplenght = 100;
void draw(){
  background(255, 255, 255);
fill(255,0,0);
ellipse(birdX,birdY,20,20);
rect(x,y,40,600);
rect(x,y - gaplenght ,40,-600);
if (mousePressed && hi == true){
birdY -= velocity;
hi = false;
}
if (mousePressed){
hi = true;
}
birdY += gravity; 

x -= 5;
if(x <= -20){
x = 500;
int random = (int) random(100, 400);
y = random;
score ++;
}
if(birdY <= 0 || birdY >= 500){
print("Game Over");
score -= 1 ;
print("Score:" + score );
  exit();
}
if(birdY >= y  && birdY <= y + 600 && birdX >= x && birdX <= x+40 ){
print("Game Over");
score -= 1 ;
print("Score:" + score );
exit();

}
if(birdY >= y  && birdY <= y - 600 && birdX >= x && birdX <= x+40 ){
print("Game Over");
score -= 1 ;
print("Score: " + score );
exit();
}

}