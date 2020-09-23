PImage ceviche;
PImage cup;

int    image_width = 1000;
int    image_height = 700;
int    value = 0;

ArrayList<PVector> cups = new ArrayList<PVector>();

void setup(){
  size(1000,700);
  ceviche      = loadImage("data/Roll10025.jpg");
  cup          = loadImage("data/red cup.png");
  ceviche.resize(image_width, image_height);
  cup.resize(0, 100);
  
  for(int x=200; x < 800; x+=100){
    for(int y=330; y < 500; y+=50){
        cups.add(new PVector(x + random(0,50), y + random(0,50)));
    }
  }
}

void draw(){
  
  image(ceviche,0,0);
  
  for(PVector i: cups){
    tint(255, 255+value); 
    image(cup, i.x, i.y + value);
  }
  value--;
}

void mouseDragged() 
{
  if (value < 330) {
    value = 1;
    filter(THRESHOLD);
  } else {
    value = 0;
  }
}
