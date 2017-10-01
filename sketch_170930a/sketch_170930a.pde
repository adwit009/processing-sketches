car c1 = new car(10,50,10,10);
car c2 = new car(10,105,30,-15);
car c3 = new car(10,165,50,10);
car c4 = new car(10,220,50,-15);
car c5 = new car(10,275,50,20);
car c6 = new car(10,330,50,-10);
car c7 = new car(10,385,50,5);
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
cpx = cary;
return cpy;
}
int getSize (){
cps = carsize;
return cps;
}
}