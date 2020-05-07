void game() {
  background(green);
  
  for(int i=0;i<objects.size();){
    GameObject obj=objects.get(i);
    obj.show();
    obj.act();
    if(obj.isDead()==true)objects.remove(i);
    else i++;
  }
}

void gameClicks() {
  myPlayer.shoot();
}
