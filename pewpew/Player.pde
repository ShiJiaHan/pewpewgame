class Player extends GameObject{
  Player(){
    super(width/2,height/2,20,1,yellow);
  }
  
  void act(){
    super.act();
    if(wkey)vy=-4;
    if(akey)vx=-4;
    if(skey)vy=4;
    if(dkey)vx=4;
    if(!wkey&&!skey)vy=0;
    if(!akey&&!dkey)vx=0;
    if(x<10)x=10;
    if(x>width-10)x=width-10;
    if(y<10)y=10;
    if(y>height-10)y=height-10;
    shoot();
  }
  void shoot(){
    if(mousePressed)objects.add(new Bullet(x,y,5,1,yellow));
  }
  void show(){
    super.show();
    /*strokeWeight(3);
    stroke(black);
    line(x,y,mouseX,y);
    stroke(white);
    line(mouseX,y,mouseX,mouseY);
    strokeWeight(1);*/
  }
}
