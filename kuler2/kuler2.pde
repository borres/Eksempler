import processing.sound.*;
SoundFile file;

float snorLengde=200;
float kuleRadius=25;
float dv=1;

float limit=150;
float V=limit;


void setup(){
  size(650,500);
  file = new SoundFile(this, "button-3.mp3");
}

void draw(){
  background(255);
  fill(0,0,255);
  if(limit > 2*Math.abs(dv)){
    V+=dv;
  
    if(V > limit-dv){
        dv=-dv;
        //file.play();
    }
    else if(V < (180-limit-dv)){
       dv=-dv;
       //file.play();
    }
    limit=limit-0.1;
  }
  else{
    V=90.0000;
  }
  //print(limit,V,"-");

  translate(200,50);
  //venstre 
  tegnKule(2*kuleRadius, Math.max(radians(V),radians(90)));
  
  tegnKule(4*kuleRadius, radians(90));
  
  tegnKule(6*kuleRadius,  radians(90));
  
  tegnKule(8*kuleRadius, Math.min(radians(V),radians(90)));

}