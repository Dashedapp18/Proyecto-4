PFont theFont;
//Char a;
//Stream streamsss;
ArrayList<Stream> streams;
void setup(){
  size(1280,720,P2D);
  
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
 for(Stream s:streams){
 s.update();
 }
  
}