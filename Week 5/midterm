PImage tanques;

int  image_width = 1000;
int  image_height = 700;

float  imagesx[] = new float[100];
float  imagesy[] = new float[100];
boolean  newImg[] = new boolean[100];
int index = 0;

void setup(){
  
  size(1000,700);
  tanques = loadImage("data/clue8.jpg");
  tanques.resize(image_width, image_height);
  
  for (int i=0; i < 100; i++){
    newImg[i] = false;
  }
}

void draw(){
  
  image(tanques,0,0);
  
  for (int i=0; i < 100; i++){
    if (newImg[i] == true){
      tint(255, 127);
      image(tanques,imagesx[i],imagesy[i]);
    }
    imagesy[i]--;
   
}
}

void mouseClicked(){
  index++;
  imagesx[index] = 0 ;
  imagesy[index] = mouseY ;
  newImg[index] = true ;
  
}  

void mouseReleased() {
  index++;
  imagesx[index] = mouseX ;
  imagesy[index] = 0 ;
  newImg[index] = true ;
  
}  
