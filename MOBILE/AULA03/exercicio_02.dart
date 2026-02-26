import "dart:io";

double entradaDouble(String frase){
  stdout.write(frase);
  String? entrada = stdin.readLineSync();
  double? entradaFinal = double.tryParse(entrada ?? "");

  if (entradaFinal == null) {
    return 0.0;
  }

  return entradaFinal;
}

void areaTriangulo(double base, double altura){
  double? area = (base * altura)/2;
  print ("Area do triangulo = $area");
}

void main(){

double base = entradaDouble("Escreva o valor da base: ");

double altura = entradaDouble("Escreva o valor da altura: ");

areaTriangulo(base, altura);
  
}