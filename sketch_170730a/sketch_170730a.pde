void setup(){






size(800,800);

}

int speed = 1;
int x = 200;
int y = 400;
int x1 = 600;
int y1= 400;
void draw(){
int a = 200;
int b = 200;
int a1 = 200;
int b1 = 200;
 background(255,255,255);
 noFill();
for (int i = 0; i<20; i++){
  ellipse(x,y,a,b);
a = a-10;
b = b-10;
}

for (int b2 = 0; b2<20; b2++){
  ellipse(x1,y1,a1,b1);
a1 = a1-10;
b1 = b1-10;
}
if(x1 <= 100 && x >= 700){
speed = speed* -1;

}
if(x <= 100 && x1 >= 700){
speed = speed * -1;
}
x = x + speed;
x1 = x1 - speed;




}