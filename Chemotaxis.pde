Walker rick;
Walker [] hillbillies = {new Walker(), new Walker(), new Walker()};
Walker [] saviors;

void setup() {
  size(800, 800);
  textAlign(CENTER,CENTER);
  rick = new Walker();
  saviors = new Walker[50];
  int i = 0;
  while (i < saviors.length) {
    saviors [i] = new Walker();  
    i++;
  }
}
void draw() {
  {
    background(0);
    rick.walk();
    rick.show();
    hillbillies[0].walk();
    hillbillies[0].show();
    hillbillies[1].walk();
    hillbillies[1].show();
    hillbillies[2].walk();
    hillbillies[2].show();
    for(int i = 0; i < saviors.length; i++) {
      saviors[i].walk();
      saviors[i].show();
    if(get(mouseX,mouseY) != color(0)){
    fill(255,0,0);
    }
    else if(get(mouseX,mouseY) == color(0)){
    fill(#E8F01B);
    }
    }
  }
}
class Walker
  {
    int myX, myY;
    int myColor;
    Walker(){
      myX = myY = 400;
      myColor = color(0,0,0);
    }
    void walk(){
      myX = myX + (int)(Math.random()*7)-3;
      //{-3,-2,-1,0,1,2,3)
      myY = myY + (int)(Math.random()*7)-3;
      if(mouseX > myX)
        myX = myX + (int)(Math.random()*5)-1;
      else
        myX = myX + (int)(Math.random()*5)-3;
      if(mouseY > myY)
        myY = myY + (int)(Math.random()*5)-1;
      else
        myY = myY + (int)(Math.random()*5)-3; 
    }
    void show(){
      {
        //Pac Man Model
      ellipse(myX,myY,100,100);
      fill(0);
      ellipse(myX-20,myY-20,20,20);
      fill(myColor);
      arc(myX, myY+5, 100, 90, HALF_PI, PI);

      }
    }
  }
