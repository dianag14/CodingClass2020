PImage cup;
PImage street;

int    image_width = 600;
int    image_height = 800;
int    px;
int    py;

ArrayList<PVector> stickers = new ArrayList<PVector>();

void setup(){
  size(600,700);
  street   = loadImage("data/BushwickStreet.jpg");
  cup      = loadImage("data/CupStreet.png");
  street.resize(image_width, image_height);
  cup.resize(image_width, image_height);

}

void draw(){
  
  px = mouseX-(image_width/2);
  py = mouseY-(image_height/2);
  
  image(street,0,0);
  image(cup,px,py);
  
  for(PVector i: stickers){
    image(cup, i.x, i.y);
  }
}
  
void mouseClicked(){
  stickers.add(new PVector(px, py));
}
