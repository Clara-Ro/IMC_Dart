import 'package:imc_dio/pessoa.dart';
import 'package:test/test.dart';
import 'dart:core';

void main() {
  
  group('Fail cases', () {
    test('Name empty or null', () {
      Person person = Person();
      expect(person.setName(''), false);
      expect(person.setName(null), false);
    });

    test('Weight negative, null or zero', () {
      Person person = Person();
      expect(person.setWeight(-3), false);
      expect(person.setWeight(null), false);
      expect(person.setWeight(0), false);
    });

    test('Height negative, null, or zero', () {
      Person person = Person();
      expect(person.setHeight(-3), false);
      expect(person.setHeight(null), false);
      expect(person.setHeight(0), false);
    });

    test('Calculate IMC without values', (){
      Person person = Person(); 
      expect(()=>person.calculateIMC(), throwsA(TypeMatcher<Error>()));
    });
    
  });

  group('Sucesseful cases', () {
    test('Validate If Name is being setted correctly',(){
      Person person = Person();
      String name = 'Clara';
      expect(person.setName(name), true);
      expect(person.name, name);
    });

    test('Validate If Weight is being setted correctly',(){
      Person person = Person();
      double weight = 57;
      expect(person.setWeight(weight), true);
      expect(person.weight, weight);
    });

    test('Validate If Height is being setted correctly',(){
      Person person = Person();
      double height = 1.53;
      expect(person.setHeight(height), true);
      expect(person.height, height);
    });

    test('Validate If IMC is being returned correctly',(){
      Person person = Person();
      person.setName('Clara');
      person.setWeight(57);
      person.setHeight(1.53);
      expect(()=>person.calculateIMC(), returnsNormally);
    });
    
  });

}
