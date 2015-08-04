public void Add_to_energy (int theValue){
  
  global_bar = global_bar + val.getValue();
  print(val.getValue()+'-'+global_bar);
  
  
  pg_people_bar_1.beginDraw();
  pg_people_bar_1.background(0);
  pg_people_bar_1.fill(255,0,0);
  pg_people_bar_1.rect(175,150,100,-bar0);
  pg_people_bar_1.text("ENERGY BAR 1", 175, 180);
  pg_people_bar_1.image(img2, 0, 0, 150, 150 );
  pg_people_bar_1.endDraw();
  image(pg_people_bar_1,200,300);
  
  
}
