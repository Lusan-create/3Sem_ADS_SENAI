//


import 'dart:io';

String nome = "";
String curso = "";
int idade = 0;

void main(){
  stdout.write("Escreva seu nome: ");
  String? nome = stdin.readLineSync();

  stdout.write("Escreva seu curso: ");
  String? curso = stdin.readLineSync();

  stdout.write("Escreva sua idade: ");
  String? entrada = stdin.readLineSync();
  int? idade = int.tryParse(entrada ?? "");

  print("""Ficha do aluno:
Nome: $nome
Idade: $idade
Curso: $curso
  """);
  
} 