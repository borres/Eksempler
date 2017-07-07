void tegnKule(float topX, float vinkel){
  pushMatrix();
  translate(topX,0);
  line(-kuleRadius,0,kuleRadius,0);
  
  float kuleX=snorLengde*cos(vinkel);
  float kuleY=snorLengde*sin(vinkel);
  
  line(0,0,kuleX,kuleY);
  ellipse(kuleX,kuleY,2*kuleRadius,2*kuleRadius);
  
  popMatrix();
}