import 'dart:io';
import 'dart:math';

//Exercise 1
class Power 
{
  void MainPower() {
    print('Ingresa un número: ');
    int n = int.parse(stdin.readLineSync()!);
    
    if (n > 0) {
      num result = pow(n, 2);
      print('Resultado: El número elevado al cuadrado es $result');
    } else if (n < 0 ){
      print('Resultado: Número negativo.');
    } else {
      print("Resultado: 0");
    }
  }
}

//Exercise 2
class DoubleTriple
{
    void MainDoubleTriple()
    {
        print("Ingrese el primer número: ");
        int a = int.parse(stdin.readLineSync()!);

        print("Ingrese el segundo número: ");
        int b = int.parse(stdin.readLineSync()!);
        
        if (a > b)
            print("Resultado: ${a*2}");
        else
            print("Resultado: ${b*3}");
        }
}

//Exercise 3
class RootSquare
{
  void MainRootSquare(){
    print("Ingrese un número: ");
    double a = double.parse(stdin.readLineSync()!);
    if (a > 0) {
      a = sqrt(a);
      print("Resultado: ${a}");
    }
    else {
      num resultado = pow(a, 2);
    print("Resultado: ${resultado}");
    }
  }
}

// Exercise 4
class Circle
{
  void MainCircle(){
    print("Ingrese el radio de un circulo");
    double radio = double.parse(stdin.readLineSync()!);
    double Perimeter = 2*pi*radio;
    print("The perimeter is: ${Perimeter}");
  }
}

//Exercise 5 

class WeekDay
{
  void MainWeekDay() {
    print("Ingrese un número del 1 al 7");
    int n = int.parse(stdin.readLineSync()!);
    String dia;

    switch(n){
      case 1:
        dia = "Lunes";
        break;
      case 2:
        dia = "Martes";
        break;
      case 3:
        dia = "Miercoles";
        break;
      case 4:
        dia = "Jueves";
        break;
      case 5:
        dia = "Viernes";
        break;
      default:
        dia = "Numero fuera del rango laboral";
        break;
    }
    print("Resultado: ${dia}");
  }
}

//Exercise 6

class Salary
{
  void MainSalary() {
    print("Ingrese su salario anual ");
    double salary = double.parse(stdin.readLineSync()!);
    int spare=0;
    if (salary > 12000)
      {
        salary = salary-12000;
        spare = (salary*0.15).toInt();
        print("Resultado: ${spare}");
      } else {
          print("Resultado: No debe Impuestos ");
        }
    }
}

// Exercise 7
class Remainder {  
  void MainRemainder() {
    print("Ingrese el primer numero: ");
    double n = double.parse(stdin.readLineSync()!);
    print("Ingrese el segundo numero: ");
    double m = double.parse(stdin.readLineSync()!);
    double mod = n%m;
    print("Resultado: ${mod}");
  }
}


// Exercise 8
class Sum_Evens
{
  void MainSum_Evens() {
    int sum=0;
    for (int i=0; i<51; i++){
        if (i % 2==0){
            sum += i;
        }
    }  
    print("Resultado: ${sum}");
  }  
}

// Exercise 9
class Fractions
{
  void MainFractions() {
    print("Ingrese la primera fraccion(en formato a/b): ");
    String frac1 = stdin.readLineSync()!;
    print("Ingrese la segunda fraccion(en formato a/b): ");
    String frac2 = stdin.readLineSync()!;

    List<int> fraction1 = getnumYdenom(frac1);
    List<int> fraction2 = getnumYdenom(frac2);

    if (fraction1.length != 2 || fraction2.length !=2){
      print('Formato incorrecto');
      return;
    }

    int num1 = fraction1[0];
    int den1 = fraction1[1];
    int num2 = fraction2[0];
    int den2 = fraction2[1];

    if (den1 == 0 || den2 == 0){
      print('El denominador no puede ser cero');
      return;
    }

    int resultnum = (num1*den2)-(num2*den1);
    int resultden = den1*den2;

    if (resultnum == 0){
      print("Resultado: 0");
    } else {
          print("Resultado: $resultnum/$resultden");
    }
  }

  List<int> getnumYdenom(String fraccion){
    List<String> parts = fraccion.split('/');
    List<int> numdenom = [];

    if (parts.length == 2) {
      int? numerator = int.tryParse(parts[0]); 
      int? denominator = int.tryParse(parts[1]); 

      if (numerator != null && denominator != null){
        numdenom = [numerator, denominator];
      }
    }
    return numdenom;
  }
}

//Exercise 10
class StringLength
{
  void MainStringLength() {
    print("Ingrese una palabra ");
    String word = stdin.readLineSync()!;
    print("Ingrese una palabra: ${word.length}");
   }
}

//Exercise 11
class Average
{
  void MainAverage() {
    double sum =0;
    for (int i=0; i<4; i++){
    print("Ingrese el numero ${i+1}: ");
    int n = int.parse(stdin.readLineSync()!);
    sum += n;
    }
    print("Resultado ${sum/4}");
   }
}

//Exercise 12
class Smallest
{
void MainSmallest() {
    int n=5;
    List <double> numbers = [];

    for (int i=0; i<n; i++){
        print("Ingrese el numero ${i+1}: ");
        double number = double.parse(stdin.readLineSync()!);
        numbers.add(number);
    }

    double nsmallest = Findnumber(numbers);
    print("Resultado: ${nsmallest} ");
}

double Findnumber(List <double> numbers){
  if (numbers.isEmpty){
    throw ArgumentError('Lista vacía');
  }

  double min = numbers[0];

    for (int i=0; i<numbers.length; i++){
        if (numbers[i]<min) {
            min = numbers[i];
        }
     }
    return min;
  }
}

// Exercise 13

class VowelCounter 
{
  void mainVowelCounter() {
    print('Ingresa una palabra: ');
    String word = stdin.readLineSync()!.toLowerCase(); // Leer la palabra y convertirla a minúsculas

    int vowels = countVowels(word);

     print('Rsultado: $vowels');
  }

  int countVowels(String word) {
    int cont = 0;

    for (int i = 0; i < word.length; i++) {
      if (isVowel(word[i])) {
      cont++;
      }
    }
    return cont;
  }

  bool isVowel(String caracter) {
    return 'aeiou'.contains(caracter);
  }
}

// Exercise 14

class Factorial
{
  void MainFactorial() {

    print("Ingrese un número: ");
    int num = int.parse(stdin.readLineSync()!);

    if (num >=0 ){
        int factorial = Calculate(num);
        print("Resultado: ${factorial} ");
     }  else {
        print("El factorial no puede ser calculado ");
        }
    }

    static int Calculate(int num){
        if (num == 0){
            return 1;
        }

        int factorial = 1;
        for (int i=1; i<=num; i++) {
            factorial *= i;
        }
        return factorial;
    }
}

// Exercise 15

class InRange
{
  void MainInRange() {
    print("Ingrese un numero: ");
    double number = double.parse(stdin.readLineSync()!);

    if (number < 10 || number > 20) {
         print("Resultado: Fuera del rango ");
       } else {
        print("Resultado: Está en el rango ");
       }
    }
}