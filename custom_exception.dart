class EpicException implements Exception{
    String errMsg() => "Epic Exception";
}
void main()
{
  int num1=10;
  int num2=5;
  
  try{
      
    if(num1 == 100){
      throw new EpicException();
    }
    else{
      print(num1 ~/ num2);
    }
 
  }
 
  catch(errMsg){
    print(errMsg);
  }
  finally{
    print("Finally block executed");
  }
}