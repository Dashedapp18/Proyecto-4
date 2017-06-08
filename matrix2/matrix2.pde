PFont theFont;
//Char a;
//Stream streamsss;
float offset = 0;
float easing = 0.05;
PImage img;
ArrayList<Stream> streams;
void setup(){
  size(1280,720,P2D);
  img = loadImage("app.png");
  theFont =createFont("Arial Unicode MS",20);
  textFont(theFont);
  textAlign(CENTER, TOP);
  
 // println(Integer.parseInt("30A1",16));
  //println(Integer.parseInt("3147",16));
  
 // a= new Char(width/2, height/2);
 // a.getRandomChar();
 //streamsss = new Stream(width/2);
 streams = new ArrayList<Stream>();
 
 for(int x=10; x < width; x+=20){
 streams.add(new Stream(x));
 }
}

void draw(){
  background(0);
 //a.show();
 //colorMode(RGB,100,500,10,255);
// colorMode(RGB,100);
 image(img,0,0);
   float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  tint(255, 127);  // Display at half opacity
  image(img, offset, 0);

 for(Stream s:streams){
 s.update();
 }
  
}