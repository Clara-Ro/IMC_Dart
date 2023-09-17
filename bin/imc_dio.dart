import 'package:imc_dio/pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {

  Person person = Person();

  print("Digite seu nome: ");
  String? name = stdin.readLineSync();
  if(!person.setName(name)) return;

  print("Digite seu peso: ");
  double? weight = double.tryParse(stdin.readLineSync() ?? '');
  if(!person.setWeight(weight)) return;

  print("Digite sua altura: ");
  double? height = double.tryParse(stdin.readLineSync() ?? '');
  if(!person.setHeight(height)) return;

  double imc = person.calculateIMC();
  print('Nome: ${person.name}');
  print('Peso: ${person.weight}');
  print('Altura: ${person.height}');
  print('IMC: ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {
    print('Você está abaixo do peso.');
  } else if (imc < 24.9) {
    print('Seu peso está normal.');
  } else if (imc < 29.9) {
    print('Você está com sobrepeso.');
  } else if (imc < 34.9) {
    print('Você está com obesidade grau 1.');
  } else if (imc < 39.9) {
    print('Você está com obesidade grau 2.');
  } else {
    print('Você está com obesidade grau 3 (obesidade mórbida).');
  }
}
