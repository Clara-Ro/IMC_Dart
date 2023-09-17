class Person {
  late String name;
  late double weight;
  late double height;

  bool setName(String? name){
    if (name == null || name == '') {
      print('Nome invalido, tente novamente!');
      return false;
    }
    this.name = name;
    return true;
  }

  bool setWeight(double? weight){
    if (weight == null || weight <= 0) {
      print('Peso invalido, tente novamente!');
      return false;
    }
    this.weight = weight;
    return true;
  }

  bool setHeight(double? height){
    if (height == null || height <= 0) {
      print('Altura invalida, tente novamente!');
      return false;
    }
    this.height = height;
    return true;
  }


  double calculateIMC(){
    return weight/(height*height);
  }
}
