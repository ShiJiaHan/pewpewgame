void intro() {
  //background
  background(white);
  textAlign(CENTER,CENTER);
  fill(black);
  textSize(10);
  text("CLICK TO START",width/2,height/2+80);
  textSize(50);
  text("PEW PEW GAME",width/2,height/2);
}

void introClicks() {
  mode = GAME;
}
