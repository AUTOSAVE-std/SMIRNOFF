import controlP5.*;

ControlP5 cp5;

int myColor = color(255);
int knobValue = 100;

Knob val;
int c1,c2, n;
float bar0, 
      global_bar = 0;
PGraphics pg_bar0,
          pg_people_bar_1;
PImage img,img2;
PImage people0;


void setup() {

  size(displayWidth, displayHeight );
  //   size(displayWidth, displayHeight, P3D ); // FOR SPEED
  img = loadImage("T08TQ7ic.png");
  img.resize(100, 100);
  
  noStroke();
  
  pg_bar0 = createGraphics(100,240);
  pg_people_bar_1 = createGraphics(300,240);
  
  
  cp5 = new ControlP5(this);
  cp5.addButton("New_people")
     .setValue(0)
     .setPosition(0,0)
     .setSize(200,19)
     ;

  val = cp5.addKnob("value_Knob")
               .setRange(0,255)
               .setValue(220)
               .setPosition(50,34)
               .setRadius(50)
               .setNumberOfTickMarks(10)
               .setTickMarkLength(4)
               .snapToTickMarks(true)
               .setDragDirection(Knob.HORIZONTAL)
               ;
  cp5.addButton("Add_to_screen")
     .setValue(0)
     .setPosition(0,160)
     .setSize(200,19)
     ;
  cp5.addButton("Add_to_energy")
     .setValue(0)
     .setPosition(0,189)
     .setSize(200,19)
     ;      
  background(0);
}

void draw() {

  image(img, displayWidth-100, 0, 100, 100 ); // LOGO
  pg_bar0.beginDraw();
  pg_bar0.background(0);
  pg_bar0.fill(255,0,0);
  pg_bar0.rect(0,200,100,-bar0);
  pg_bar0.text("ENERGY BAR 0", 0, 220);
  pg_bar0.endDraw();
  image(pg_bar0,400,0);
  
}
void value_Knob(int theValue) {
  println("a knob event. setting background to "+theValue);
  bar0 = map(theValue, 0, 255, 0, 150);
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
}

public void New_people (int theValue){
  println("New_people"+theValue);
  img2 = loadImage("img/1.JPG");
  img2.resize(150, 150);
  image(img2, 225, 50, 150, 150 );
}









