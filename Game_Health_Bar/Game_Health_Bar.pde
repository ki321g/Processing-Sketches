

void setup() {
 size(1280,720);

}

void draw(){
  strokeWeight(2);
  stroke(0);
  int player_1 = 1;
  int player_2 = 1;
  int healthPlayer_1 = 3;
  int healthPlayer_2 = 4;
  
  for(int i = 1; i <=5; i++){
   if(player_1 == 1 ){
      if(i <= healthPlayer_1) {
        fill(#4FAF44);
      } else {
        fill(#EF4423);
      }
      rect(width-(150 - (i*20)), 10, 20, 15);
    }
    if(player_2 == 1 ){
      if(i <= healthPlayer_2) {
        fill(#4FAF44);
      } else { 
        fill(#EF4423);
      }
      rect(10 +(i*20), 10, 20, 15);
     }
  }
  
 //Testing this it works
}
