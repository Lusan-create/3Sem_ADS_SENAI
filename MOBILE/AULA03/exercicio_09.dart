import 'dart:io';


double calculaEnergia(double quantidade,String? tipo){
  double valor;

  if (tipo == "R" || tipo == "r"){
    if (quantidade < 500){
      valor = quantidade * 0.5;
      return valor;
    }
    else if (quantidade > 500){
      quantidade = quantidade - 500;
      valor = (quantidade * 0.7) + 250;
      return valor;
    }
  }
  else if (tipo == "C" || tipo == "c"){
    if (quantidade < 1000){
      valor = quantidade * 0.65;
      return valor;
    }
    else if (quantidade > 1000){
      quantidade = quantidade - 1000;
      valor = (quantidade * 0.6) + (1000 * 0.65);
      return valor;
    }
  }
  else if (tipo == "I" || tipo == "i"){
    if (quantidade < 5000){
      valor = quantidade * 0.55;
      return valor;
    }
    else if (quantidade > 5000){
      quantidade = quantidade - 5000;
      valor = (quantidade * 0.5) + (5000 * 0.55);
      return valor;
    }
  }

  return 0;
}

double entradaDouble(String frase){
  stdout.write(frase);
  String? entrada = stdin.readLineSync();
  double? entradaFinal = double.tryParse(entrada ?? "");

  if (entradaFinal == null) {
    return 0.0;
  }

  return entradaFinal;
}

void main(List<String> args) {
  

  stdout.write("""Tipos de fornecimentos:
R - Residencial
C - Comercial
I - Industrial

Escreva a letra do tipo de fornecimento: """);
String? tipo = stdin.readLineSync();

double quantidade = entradaDouble("Escreva a quantidade de KWh utilizados: ");


double valorFinal = calculaEnergia(quantidade, tipo);

print("O valor da conta: $valorFinal");
}