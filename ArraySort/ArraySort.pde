
void setup() {
  String[] arrayNames = new String[] { "Maria", "Amelia", "Daniel", "Kieron", "Brian", "MaryAnn", "Chris", "Sam" }; 
  int[] array = new int[] { 3, 12, 4, 67, 23, 14, 89, 5 };
  int index= -1;

  for (int i = 0; i <array.length; i++) {
    index = i;
    for (int j = i; j <= array.length-1; j++) {
      if (array[j] > array[index]) {
        index = j;
      }
    }
    int temp = array[i];
    String tempNames = arrayNames[i];
    
    array[i] = array[index];
    arrayNames[i] = arrayNames[index];
    
    array[index] = temp;
    arrayNames[index] = tempNames;
  }
  
   print("Pos  Name    Score" + "\n");  
  for (int i = 0; i < array.length; i++) {
    print(i + "    " + arrayNames[i] + "      ");
    print(array[i] + "\n");
   
  }
}
