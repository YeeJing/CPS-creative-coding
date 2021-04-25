//mouse click for optic surprise
int counter = 0;

color[] colorList = new color[2];

void setup(){
  frameRate(10);
  size(720,860);
  colorMode(HSB,360,100,100);
  
  background(0,0,100);
  colorList[0] = color(0,80,80);
  colorList[1] = color(245,99,99);
}
  
  void draw(){

  //repeat tiles
  for(int y = 0; y < 6; y++){
    for(int x = 0; x < 5; x++){
      pushMatrix();
      translate(120*x,0);
      //alternating colors
       if (counter % 3 == 0){
         //random between red and blue
        tile(color(colorList[int(random(2))]));
      } else if (counter % 3 == 1){
        tile(color(random(245),10,99));
      }else {
        tile(color(0,0,0));
      }
      popMatrix();
      counter++;
    }
    translate(5,132);
  }
}
  
  void tile(color f){
  stroke(0,0,0);
  fill(f);
  //creating the shape
  beginShape();
  vertex(40,40);
  vertex(50,40);
  vertex(50,30);
  vertex(80,30);
  vertex(80,40);
  vertex(120,40);
  vertex(120,30);
  vertex(150,30);
  vertex(150,40);
  vertex(160,40);
  vertex(160,120);
  vertex(150,120);
  vertex(150,150);
  vertex(120,150);
  vertex(120,160);
  vertex(80,160);
  vertex(80,150);
  vertex(50,150);
  vertex(50,160);
  vertex(30,160);
  vertex(30,120);
  vertex(40,120);
  vertex(40,40);
  endShape(CLOSE);}
  
  void mouseClicked(){
    //click for a clearer color optical illusion
   background(0,0,0);
  }
  
