import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';


void main(){


  late Calculator calculator;


  // This Function runs first of all
  setUpAll((){
    calculator=Calculator();
    print("Testing Started");
  });

  // Runs After every test
  setUp((){
    print("Before  Test");
  });




  // This functions run at the end
  tearDownAll((){
    print("Testing Completed");
  });



  // Runs After every test case
  tearDown((){
    print("After Test");
  });



   group("Calaculator Module", (){

     test("Test Add functionaliy of calculator",(){
       int result=calculator.add(4, 5);
       expect(result, 9);
     });

     test("Test Multiplication functionaliy of calculator",(){
       Calculator calculator=Calculator();
       int result=calculator.multiply(4, 5);
       expect(result, 20);
       expect(result, isNonZero);
     });

   });

}