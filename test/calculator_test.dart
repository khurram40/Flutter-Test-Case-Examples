import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';


void main(){

   group("Calaculator Module", (){

     test("Test Add functionaliy of calculator",(){
       Calculator calculator=Calculator();
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