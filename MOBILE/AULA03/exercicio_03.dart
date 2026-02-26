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

double calculaSalario(double salario){
  double salarioFinal = salario - ((salario * 0.10) + (salario * 0.20));
  return salarioFinal; 
}

main(){
  double salario = entradaDouble("Escreva o salário do colaborador: ");

  salario = calculaSalario(salario);
  
  print("O salário do colaborador após descontos: $salario");
}