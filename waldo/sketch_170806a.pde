import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh; 
AudioSample woohoo;

void setup() {
  PImage waldo = loadImage("hi.jpg"); // 2. Change this to match your file name.
  size(900,900);
  waldo.resize(900,900);
  woohoo = minim.loadSample("/Users/league/Google Drive/league-sounds/homer-woohoo.wav");
  doh = minim.loadSample("/Users/league/Google Drive/league-sounds/homer-doh.wav");
  background(waldo);
}
 

void draw() {
boolean hi = false;
  // 3. Use this print statement to find out the coordinates of Waldo
 // println("X: " + mouseX + " Y: " + mouseY); 

  // 4. If the mouse is on Waldo, print “Waldo found!”
if(mousePressed){
if(mouseX > 577 && mouseX < 614 &&mouseY > 810 &&mouseY < 900 ){
println("Waldo Found!");
hi = true;
}
  // 5. If Waldo is found, also use the method below to play “Woohoo”
if(hi == true){
playWoohoo();
}
  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”
if(hi != true){
playDoh();
}
}
}

void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
 doh.stop();
doh.trigger();
}