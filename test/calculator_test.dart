import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';

void main() {
  late Calculator calculator;

  // This Function runs first of all
  setUpAll(() {
    calculator = Calculator();
    if (kDebugMode) {
      print("Testing Started");
    }
  });

  // Runs After every test
  setUp(() {
    if (kDebugMode) {
      print("Before  Test");
    }
  });

  // This functions run at the end
  tearDownAll(() {
    if (kDebugMode) {
      print("Testing Completed");
    }
  });

  // Runs After every test case
  tearDown(() {
    if (kDebugMode) {
      print("After Test");
    }
  });

  group("Calculator Module", () {
    test("Test Add functionality of calculator", () {
      int result = calculator.add(4, 5);
      expect(result, 9);
    });

    test("Test Multiplication functionality of calculator", () {
      Calculator calculator = Calculator();
      int result = calculator.multiply(4, 5);
      expect(result, 20);
      expect(result, isNonZero);
    });
  });
}
