import 'dart:io';

int entradaInt(String frase){

  stdout.write(frase);
  String? entrada = stdin.readLineSync();
  int? entradaFinal = int.tryParse(entrada ?? "");

  if (entradaFinal == null) {
    return 0;
  }

  return entradaFinal;
}

void main(){
int idade01 = entradaInt("Escreva a idade da primeira pessoa: ");

int idade02 = entradaInt("Escreva a idade da segunda pessoa: ");

if (idade01 == idade02){
  print("Ambos possuem a mesma idade");
}

else if (idade01 > idade02){
  print("O primeiro é mais velho");
}

else{
  print("O segundo é mais velho");
}
}