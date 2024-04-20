import 'dart:io';

void main() {
print("--------------------------------\nWELCOME TO MY SIMPLE CALCULATOR\n--------------------------------");
mainmenu();
}

mainmenu(){
  var choosemenu;
  
  while(choosemenu!="5" || choosemenu!="exit"){
  print("Please choose what operation do you want(in number or in word)");
  print("1-add");
  print("2-substraction");
  print("3-multiplication");
  print("4-division");
  print("5-Exit");
  choosemenu= stdin.readLineSync();  
  
  if(choosemenu=="1" || choosemenu=="add" || choosemenu=="sum" || choosemenu=="plus"){
    add();
  }else if(choosemenu=="2" || choosemenu=="substraction" || choosemenu=="sub"){
    substraction();
  }else if(choosemenu=="3" || choosemenu=="multiplication" || choosemenu=="multiply"){
    multiplication();
  }else if(choosemenu=="4" || choosemenu=="division" || choosemenu=="divide"){
    division();
  }
  else if(choosemenu=="exit" || choosemenu=="5"){
    Future.delayed(Duration(seconds: 1), () {
    print("**********************************\nThank you for using my simple calculator\nGoodbye!\n**********************************");
    });
    break;
  }else{
    print("*****************\nINVALID CHOICE\n*****************");
  }
  
}
}

//addition
 add(){
var choice="yes";
  while(choice=="yes"){
  print("What numbers do you want to add?");
  print("Enter the first number:");
  var firstnumber= stdin.readLineSync();
  print("Enter the second number:");
  var secondnumber= stdin.readLineSync();
  var result = int.parse(firstnumber  ?? '0') + int.parse(secondnumber ?? '0');
  print("The result is $result");
  //ask user if they want to continue
  var validchoice=false;
  while(validchoice==false){
  print("Do you want to continue? (yes/no)");
  choice = stdin.readLineSync() ?? "no"; 
    if(choice=="yes" || choice=="no"){
    validchoice=true;
    }else{
    print("*****************\nINVALID CHOICE\n*****************");
    }
  }
  //this is end of while loop basically if user choose no then it will exit the loop
  }
  //exit the program
  if(choice=="no"){
    mainmenu();
  }
  }
 //substraction/method untuk pengurangan
  substraction() {
  var choice="yes";
  while(choice=="yes"){
  print("Enter the first number:");
  var firstnumber= stdin.readLineSync();
  print("Enter the second number:");
  var secondnumber= stdin.readLineSync();
  var result = int.parse(firstnumber  ?? '0') - int.parse(secondnumber ?? '0');
  print("The result is $result");
    //ask user if they want to continue
  var validchoice=false;
  while(validchoice==false){
  print("Do you want to continue? (yes/no)");
  choice = stdin.readLineSync() ?? "no"; 
    if(choice=="yes" || choice=="no"){
    validchoice=true;
    }else{
    print("*****************\nINVALID CHOICE\n*****************");
    }
  }
  //this is end of while loop basically if user choose no then it will exit the loop
  }
  //exit the program
  if(choice=="no"){
    mainmenu();
  }
  }
  //multiplication/method untuk darab
  multiplication() {
    var choice="yes";
  while(choice=="yes"){
  print("Enter the first number:");
  var firstnumber= stdin.readLineSync();
  print("Enter the second number:");
  var secondnumber= stdin.readLineSync();
  var result = int.parse(firstnumber  ?? '0') - int.parse(secondnumber ?? '0');
  print("The result is $result");
    //ask user if they want to continue
  var validchoice=false;
  while(validchoice==false){
  print("Do you want to continue? (yes/no)");
  choice = stdin.readLineSync() ?? "no"; 
    if(choice=="yes" || choice=="no"){
    validchoice=true;
    }else{
    print("*****************\nINVALID CHOICE\n*****************");
    }
  }
  //this is end of while loop basically if user choose no then it will exit the loop
  }
  //exit the program
  if(choice=="no"){
    mainmenu();
  }
  }
 
  //division/method untuk bahagi
 division(){
      var choice="yes";
  while(choice=="yes"){
  print("Enter the first number:");
  var firstnumber= stdin.readLineSync();
  print("Enter the second number:");
  var secondnumber= stdin.readLineSync();
  var result = int.parse(firstnumber  ?? '0') / int.parse(secondnumber ?? '0');
  print("The result is $result");
      //ask user if they want to continue
  var validchoice=false;
  while(validchoice==false){
  print("Do you want to continue? (yes/no)");
  choice = stdin.readLineSync() ?? "no"; 
    if(choice=="yes" || choice=="no"){
    validchoice=true;
    }else{
    print("*****************\nINVALID CHOICE\n*****************");
    }
  }
  //this is end of while loop basically if user choose no then it will exit the loop
  }
  //exit the program
  if(choice=="no"){
    mainmenu();
  }
  }
  //end of the program