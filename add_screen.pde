public void Add_to_screen (int theValue){
 
  pg_bar_1_people_energy.beginDraw();
  pg_bar_1_people_energy.background(0);
  pg_bar_1_people_energy.fill(198,0,50);
  pg_bar_1_people_energy.rect(225,150,110,-bar0);
  pg_bar_1_people_energy.fill(255);
  pg_bar_1_people_energy.text("ENERGY BAR 1", 225, 180);
  pg_bar_1_people_energy.image(img2, 0, 0, 200, 200 );
  pg_bar_1_people_energy.endDraw();
  image(pg_bar_1_people_energy,250,300);
  
  
}
