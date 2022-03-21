float xposs,yposs;
int tam= 30;
int xdirecc =2;
int ydirecc = 2;
int xdirec = 1;
int ydirec = 1;
float xvel = 3;
float yvel = 3;

float points=0;

float xvell = 1;
float yvell=1;
float xpos,ypos;



void setup(){
 size(1000,450);
 smooth(40);
 xposs=230;
 yposs=230;
 xpos=200;
 ypos=100;
 noStroke();
 frameRate(60);
background(0);
 smooth(40);
}
  
void draw() {
fill(0,30);
  rect(0,0,width,height);
  
  fill(255,0,0);
  
 xpos= xpos+(xvel*xdirec);
 ypos= ypos+(yvel*ydirec);
 xposs = xposs +(xvell*xdirecc);
 yposs = yposs +(yvell*ydirecc);
 
if (xpos > width-20  || xpos < tam)  {
  xdirec *=-1;
    
}
if(ypos > height-20   || ypos < tam)  {
  ydirec *=-1;
 }
   ellipse(xpos,ypos,tam,tam);
  
    
    
    
    
    
if (xposs > width-40  || xposs < tam)  {
  xdirecc *=-1;
}
if(yposs > height-40   || yposs < tam)  {
  ydirecc *=-1;
    }
  ellipse(xposs,yposs,40,40); 
  fill(0,0,255);
 rect(mouseX, mouseY, 70, 10); 
 
 
 //collide 
 //betweem them
if (dist(xposs,yposs,xpos,ypos) < tam){ydirecc *=-1;
xdirecc *=-1; ydirec *=-1;xdirec *=-1;}

//with rec -big ball
if (dist(xposs,yposs,mouseX+35,mouseY) < 30){ydirecc *=-1;
xdirecc *=-1; 
//yvell+=1;
points++;}

//rect small ball
if (dist(xpos,ypos,mouseX+35,mouseY) < tam){ ydirec *=-1;xdirec *=-1;
//yvel+=1;
points++;}

//score
fill(255);
textSize(30);
text("POINTS: "+ points,20,20);

//endgame
if(dist(xpos,ypos,xpos,height)<=30){
stop();
}
if(dist(xposs,yposs,xposs,height)<=40){
stop();
}
}
   
 


  
