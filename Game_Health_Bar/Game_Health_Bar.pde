

void setup() {
 size(1280,720);

}

void draw(){
  strokeWeight(2);
  stroke(0);
  
  for(int i = 1; i <=5; i++){
    if(i < 5) {
      fill(127);
    } else {
      fill(255);
    }
    rect(width-(150 - (i*20)), 10, 20, 20);
    rect(10 +(i*20), 10, 20, 20);
  }
  
 
}
