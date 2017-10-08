car c1 = new car(10,50,50,2);
car c2 = new car(10,105,30,-1);
car c3 = new car(10,165,50,1);
car c4 = new car(10,220,50,-1);
car c5 = new car(10,275,50,9);
car c6 = new car(10,330,50,-1);
car c7 = new car(10,385,50,1);

void setup(){
size(400, 400);

}
int x = 200;
int y = 350;
int hop = 10;
int cpx ;
int cpy;
int cps;

void draw(){
 
background(0,0,0);
fill(0,256,0);
ellipse(x,y,50,50);
c1.display();
c2.display();
c3.display();
c4.display();
c5.display();


c1.carmove();
c2.carmove();
c3.carmove();
c4.carmove();
c5.carmove();
 if (y == 25) {
text( "You win" , 200, 200); 
  textSize(20); 

}
if (intersects(c1) == true){

y = 350;
}
if (intersects(c2) == true){

y = 350;
}
if (intersects(c3) == true){

y = 350;
}
if (intersects(c4) == true){

y = 350;
}
if (intersects(c5) == true){

y = 350;
}

}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
     
      {
      y = y - hop;
        //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
        y = y + hop; //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
       x = x  + hop;//Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
      x = x - hop;  //Frog X position goes left
      }
   }


if(x > 375 ){
x = 375;
}
if(y > 375){
y = 375;
}
if(x < 25 ){
x = 25;
}
if(y < 25){
y = 25;
}
}

class car{
int carx;
int cary;
int carspeed ;
int carsize;

 void display() 
  {
    fill(0,255,0);
    rect(carx, cary, carsize, 50);
  }

car(int carx, int cary, int carsize, int carspeed){
 this.carx = carx;
this.cary = cary;
this.carspeed = carspeed;
this.carsize = carsize; 
}
void carmove (){
carx = carx + carspeed;
if (carx > 410) {
carx = -10;
}
else{
if(carx < -10){
carx = 410; 
}}


}
int getX (){
cpx = carx;
return cpx;
}
int getY (){
cpy = cary;
return cpy;
}
int getSize (){
cps = carsize;
return cps;
}

}
boolean intersects(car car) {
 fill(255,0,0);
  rect(x,y,3,3);
if ((y - 25 > car.getY() && y - 25 < car.getY()+50) && (x > car.getX() && x  < car.getX()+car.getSize())|| (y + 25 > car.getY() && y + 25 < car.getY()+50) && (x > car.getX() && x  < car.getX()+car.getSize())||(y > car.getY() && y  < car.getY()+50) && (x -25 > car.getX() && x -25  < car.getX()+car.getSize())||(y  > car.getY() && y  < car.getY()+50) && (x + 25 > car.getX() && x + 25  < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}