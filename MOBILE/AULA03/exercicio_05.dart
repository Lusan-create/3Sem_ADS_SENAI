
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

int entradaInt(String frase){

  stdout.write(frase);
  String? entrada = stdin.readLineSync();
  int? entradaFinal = int.tryParse(entrada ?? "");

  if (entradaFinal == null) {
    return 0;
  }

  return entradaFinal;
}

void achaMedia(int qtd, int aluno){
  int notas = 0;
  String resultado = "NA";


  print("\n$aluno° aluno: ");

  for(int i = 0; i < qtd; i++){
    notas = notas + entradaInt("Escreva a ${i + 1}° nota: ");
  }
  double media = notas / qtd;

  

  if (media >= 7 ){
    resultado = "Aprovado";
  }
  else if (media < 7 && media >= 4){
    resultado = "Recuperação";
  }
  else {
    resultado = "Reprovado";
  }
  

  print("""
  Nota do $aluno° aluno:

  A média do $aluno° é: $media
  
  Resultado: $resultado

  """);

}

void main(){
  int qtd = entradaInt("Escreva a quantidade de notas por aluno: ");

  achaMedia(qtd, 1);

  achaMedia(qtd, 2);
 
}