
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

double descontoEtanol(double quantidade){
  if (quantidade >= 15){
    return 0.04;
  }
  else{
    return 0.03;
  }
}

double descontoDiesel(double quantidade){
  if (quantidade >= 15){
    return 0.05;
  }
  else{
    return 0.03;
  }
}

double descontoGasolina(double quantidade){
  if (quantidade >= 20){
    return 0.03;
  }
  else{
    return 0;
  }

}

double calculaValor(double quantidade, double desconto, double preco){
  double disc = preco * quantidade * desconto;
  double valorFinal = (preco * quantidade) - disc;

  return valorFinal;

}
void main(){

double quantidade = entradaDouble("Escreva a quantidade de litros que será abastecido: ");
double desconto = 0;
double preco = 0;

stdout.write("""Tipos de comustiveis
E - Etanol
D - Diesel
G - Gasolina

Escreva a letra do combustivel: """);
String? combustivel = stdin.readLineSync();



if (combustivel == "E" || combustivel == "e"){
  desconto = descontoEtanol(quantidade);
  preco = 1.7;

}
else if (combustivel == "D" || combustivel == "d"){
  desconto = descontoDiesel(quantidade);
  preco = 2;

}
else if (combustivel == "G" || combustivel == "g"){
  desconto = descontoGasolina(quantidade);
  preco = 4.5;
}
else{
  desconto = 0;
  preco = 0;
  print("Entrada incorreta");
}

double valorFinal = calculaValor(quantidade, desconto, preco);

print("Valor final do combustivel = $valorFinal");

}