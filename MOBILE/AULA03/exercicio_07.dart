
import 'dart:io';

double entradaDouble(String frase){
  stdout.write(frase);
  String? entrada = stdin.readLineSync();
  double? entradaFinal = double.tryParse(entrada ?? "");

  if (entradaFinal == null) {
    return 0.0;
  }

  return entradaFinal;
}

void main() {
  double carro01 = entradaDouble("Qual o valor do primeiro carro: ");

  double carro02 = entradaDouble("Qual o valor do segundo carro: ");

  double carro03 = entradaDouble("Qual o valor do terceiro carro: ");

  if (carro01 == carro02 && carro01 == carro03){
    print("todos possuem o mesmo preço");
  }

  

  else if (carro01 >= carro02){

    if (carro01 == carro02){
      print("Primeiro e segundo carro possuem o mesmo valor");
    }
    else if(carro01 == carro03){
      print("O primeiro e terceiro carro possuem o mesmo preço");
    }

    else if (carro01 > carro03){
      print("O primeiro carro é o mais caro");
    }
    else if (carro03 > carro01){
      print("O terceiro carro é o mais caro");
    }
  }

  else if (carro02 == carro03){
    print("segundo e terceiro carro possuem o mesmo valor");
  }

  else if(carro02 > carro03){
    print("O segundo carro é o mais caro");
  }
  else{
    print("O terceiro carro é o mais caro");
  }
}