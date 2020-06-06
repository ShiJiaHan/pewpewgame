void game() {
  background(green);
  
  for(int i=0;i<objects.size();){
    GameObject obj=objects.get(i);
    obj.show();
    obj.act();
    if(obj.isDead()==true)objects.remove(i);
    else i++;
  }
  
  if(frameCount%60==0)
  objects.add(new Enemy());
}

void gameClicks() {
  myPlayer.shoot();
}
