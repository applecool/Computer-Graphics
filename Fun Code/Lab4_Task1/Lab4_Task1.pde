int [] Final_Score = {85,92,96,81,72,52,50,78,75,92,95,88,100,76,90,91,81,80,76,83};
int [] Letter_Grade;
void setup(){
  
  Letter_Grade = new int [5];
  for (int i =0; i<Final_Score.length; i++){
   if (Final_Score[i]>=90){
       Letter_Grade[0]++; //println("A");
   }else if(Final_Score[i]>=80 && Final_Score[i]<=89){
          Letter_Grade[1]++; //println("B");
   }else if(Final_Score[i]>=70 && Final_Score[i]<=79){
          Letter_Grade[2]++; //println("C");
   }else if(Final_Score[i]>=60 && Final_Score[i]<=69){
           Letter_Grade[3]++; //println("D");
   }else
     Letter_Grade[4]++;//println("F");
  }// end of for loop
  
  println("No of students who got A is :"+ Letter_Grade[0]);
  println("No of students who got B is :"+ Letter_Grade[1]);
  println("No of students who got C is :"+ Letter_Grade[2]);
  println("No of students who got D is :"+ Letter_Grade[3]);
  println("No of students who got F is :"+ Letter_Grade[4]);

   
}
