import 'dart:developer';
import "dart:io";
import 'Exercises/challenges.dart';
import 'Menu/index.dart';

void main(){

  var menu = new Menu();
  menu.MostrarMenu();

  while(true){
    String? opc = stdin.readLineSync()?.toLowerCase();
    if (opc == 's' || opc == 'S') {
      break;
    }

    int? op = int.tryParse(opc!);

    if (op != null && op >= 1 && op <=15 ){

      switch(op){
        case 1:
           var exercise1 = Power();
           exercise1.MainPower();
        break;

        case 2:
           var exercise2 = DoubleTriple();
           exercise2.MainDoubleTriple();
        break;

        case 3:
           var exercise3 = RootSquare();
           exercise3.MainRootSquare();
        break;

        case 4:
           var exercise4 = Circle();
           exercise4.MainCircle();
        break;
                
        case 5:
           var exercise5 = WeekDay();
           exercise5.MainWeekDay();
        break;

        case 6:
           var exercise6 = Salary();
           exercise6.MainSalary();
        break;
              
        case 7:
           var exercise7 = Remainder();
           exercise7.MainRemainder();
        break;

        case 8:
           var exercise8 = Sum_Evens();
           exercise8.MainSum_Evens();
        break;
                
        case 9:
           var exercise9 = Fractions();
           exercise9.MainFractions();
        break;
        
        case 10:
           var exercise10 = StringLength();
           exercise10.MainStringLength();
        break;
                         
        case 11:
           var exercise11 = Average();
           exercise11.MainAverage();
        break;
              
        case 12:
           var exercise12 = Smallest();
           exercise12.MainSmallest();
        break;
  
        case 13:
           var exercise13 = VowelCounter();
           exercise13.mainVowelCounter();
        break;

        case 14:
           var exercise14 = Factorial();
           exercise14.MainFactorial();
        break;
                
        case 15:
           var exercise15 = InRange();
           exercise15.MainInRange();
        break;

        default:
          print(" Opcion no válida ");
          menu.MostrarMenu();
        break;
            }
        } else {
          print(" Opcion no valida. Por favor ingrese una opción entre 1 y 15 o presione S para salir ");
        }
    }
}