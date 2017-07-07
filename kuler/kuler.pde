float snorLengde=150;
float kuleRadius=25;
float dv=2;
float startV=180;
float V=startV;

void setup(){
  size(600,500);
}

void draw(){
  background(255);
  fill(0,0,255);

  if(V > 180)
      dv=-dv;
   else if(V < 0)
     dv=-dv;
  
  V+=dv;

  translate(150,50);
  //venstre kule
  tegnKule(2*kuleRadius, Math.max(radians(V),radians(90)));
  
  tegnKule(4*kuleRadius, radians(90));
  
  tegnKule(6*kuleRadius,  radians(90));
  
  tegnKule(8*kuleRadius, Math.min(radians(90),radians(V)));

}