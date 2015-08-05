import controlP5.*;

ControlP5 cp5;

int myColor = color(255);
int knobValue = 100;
int c1,c2, n, count, count2_click_add_energy;

Knob val;

float bar0, 
      global_bar;
      
PGraphics pg_bar0,
          pg_bar_1_people_energy,
          pg_bar_4_L,
          pg_bar_5_R,
          pg_bar_2_energy,
          pg_bar_3_picture;
          
PImage img,img2;
PImage people0;


void setup() {

//  size(displayWidth, displayHeight );
  size(displayWidth, displayHeight ); // FOR SPEED
  img = loadImage("T08TQ7ic.png");
  img.resize(100, 100);
  
  noStroke();
  
  count = 0;
  count2_click_add_energy = 0;
  global_bar = 0;
  
  pg_bar0 = createGraphics(100,240);
  pg_bar_1_people_energy = createGraphics(350,240);
  pg_bar_4_L = createGraphics(200,480);
  pg_bar_5_R = createGraphics(200,480);
  pg_bar_2_energy = createGraphics(200,480);
  pg_bar_3_picture = createGraphics(200,480);
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
  pg_bar0.fill(198,0,50);
  pg_bar0.rect(0,200,100,-bar0);
  pg_bar0.fill(255);
  pg_bar0.text("ENERGY BAR 0", 0, 220);
  pg_bar0.endDraw();
  image(pg_bar0,400,0);
  
}
void value_Knob(int theValue) {
  println("a knob event. setting background to "+theValue);
  bar0 = map(theValue, 0, 255, 0, 150);
}

public void controlEvent(ControlEvent theEvent) {
//  println(theEvent.getController().getName());
}

public void New_people (int theValue){
  if (count==1) {  text("NEXT PEOPLE...",225, 225);}
  println("New_people"+theValue+" count: "+count);
  img2 = loadImage("img/"+count+".JPG");
//  img2.resize(150, 150);
  image(img2, 225, 50, 150, 150 );
  text(count, 225, 60);
  count++;
}









