public void Add_to_energy (int theValue){
  
  global_bar = global_bar + val.getValue();
  print(val.getValue()+'-'+global_bar);
  
          pg_bar_4_L();
          pg_bar_5_R();
          pg_bar_2_energy();
          pg_bar_3_picture();
  count2_click_add_energy++;
}
float convert_v(float me) {
  
  return map(me, 0, 255*200, 0, 300);
}
void pg_bar_4_L(){
  float g = convert_v(global_bar);
  pg_bar_4_L.beginDraw();
  pg_bar_4_L.background(0);
  pg_bar_4_L.fill(198,0,50);
  pg_bar_4_L.rect(0,300,190,-g);
  pg_bar_4_L.fill(255);
  pg_bar_4_L.text("ENERGY BAR 4 LEFT", 0, 320);
  pg_bar_4_L.text(count2_click_add_energy+" people : "+global_bar+"/51000", 0, 335);
  pg_bar_4_L.text(g+"px/300px", 0, 350);
  pg_bar_4_L.endDraw();
  image(pg_bar_4_L,30,300);
  
}
void pg_bar_5_R(){
  float g = convert_v(global_bar);
  pg_bar_5_R.beginDraw();
  pg_bar_5_R.background(0);
  pg_bar_5_R.fill(198,0,50);
  pg_bar_5_R.rect(0,300,190,-g);
  pg_bar_5_R.fill(255);
  pg_bar_5_R.text("ENERGY BAR 5", 0, 320);
  pg_bar_5_R.text("RIGHT", 0, 335);
  pg_bar_5_R.endDraw();
  image(pg_bar_5_R,displayWidth-225,300);
}
void pg_bar_2_energy(){
  float g = convert_v(global_bar);
  pg_bar_2_energy.beginDraw();
  pg_bar_2_energy.background(0);
  pg_bar_2_energy.fill(198,0,50);
  pg_bar_2_energy.rect(0,300,190,-g);
  pg_bar_2_energy.fill(255);
  pg_bar_2_energy.text("ENERGY BAR 2", 0, 320);
  pg_bar_2_energy.text("ENERGY MAIN", 0, 335);
  pg_bar_2_energy.endDraw();
  image(pg_bar_2_energy,displayWidth-(225*2-20),300);
}
void pg_bar_3_picture(){
  
  float i = count3_add_pic_bar;
  float j=0,k;
  if( i % 5 == 0) j = 200-(40*5);
  if( i % 5 == 4) j = 200-(40*4);
  if( i % 5 == 3) j = 200-(40*3);
  if( i % 5 == 2) j = 200-(40*2);
  if( i % 5 == 1) j = 200-40;
  k = ceil(i/5);
  println("----"+i+"--------");
  
  pg_bar_3_picture.beginDraw();
  pg_bar_3_picture.fill(0);
  pg_bar_3_picture.rect(0,305,100,50);
  pg_bar_3_picture.fill(255);
  pg_bar_3_picture.text("ENERGY BAR 2", 0, 320);
  pg_bar_3_picture.text("PICTURE", 0, 335);
  pg_bar_3_picture.image(img2, j, 335-(40+40*k), 40, 40 );
  pg_bar_3_picture.endDraw();
  image(pg_bar_3_picture,displayWidth-(225*3-10),300);

  count3_add_pic_bar++;
}


