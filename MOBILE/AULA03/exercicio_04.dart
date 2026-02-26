import 'dart:collection';
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

double conversor(double valor, double conversao){
  double convertido = valor / conversao;
  return convertido;
}


void main() {
  double reais = entradaDouble("Escreva o valor em reais que será convertido: ");

  double euro = conversor(reais, 7.00);

  double dolar = conversor(reais, 6.56);

  double franco = conversor(reais, 4.35);

  print("""
Tabela de conversão
Valor em real: $reais

Conversão ao Euro:         ${euro.toStringAsFixed(2)}
Conversão ao dolar:        ${dolar.toStringAsFixed(2)}
Conversão ao franco suiço: ${franco.toStringAsFixed(2)}
""");
}