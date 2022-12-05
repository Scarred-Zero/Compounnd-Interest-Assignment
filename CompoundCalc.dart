import 'dart:io';
import 'dart:math';

// ASSIGNMENT ON OOP
// CREATE A PROGRAM THAT CALCULATES COMPOUND INTEREST 
void main(List<String> args) {

  var interest = InterestCalculator();
    // Getting information from user
  print('Enter Principal balance : ');
  interest.principalBal = double.parse(stdin.readLineSync()!);

  print('Enter Interest rate : ');
  interest.interestRate = double.parse(stdin.readLineSync()!);

  print('Enter Time in years : ');
  interest.time = double.parse(stdin.readLineSync()!);

  print('Enter number of times interest applied per time period : ');
  interest.n = double.parse(stdin.readLineSync()!);
  
  // Calculates Simple interest based on collected data
  interest.simpleInterest();
  // Calculates Compound interest based on collected data
  interest.compoundInterest();
}

class InterestCalculator{
  double? principalBal;
  double? interestRate;
  double? time;
  double? finalAmount;
  double? n;

  // Calculation of the Simple interest
  double simpleInterest(){
    finalAmount = principalBal! * 1 + interestRate! * time!;

    print('The simple interest is : $finalAmount');
    return finalAmount!;
  }
  // Calculation of the Compound interest
  double compoundInterest(){
    double AnnualRate = interestRate! / 100;

    finalAmount = (principalBal! * (1 + AnnualRate / n!) * pow(n!, time!));

    print("The compound interest is : $finalAmount");
    return finalAmount!;
  }
}