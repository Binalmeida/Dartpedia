import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const String version = '0.0.8';
/// FUNÇÃO PRINCIPAL
/// Agora o CommandRunner gerencia todos os comandos.
/// O main é async para aguardar operações assíncronas.
Future<void> main(List<String> arguments) async {
  // Cria o runner
  final runner = CommandRunner();

  // Executa os comandos recebidos pelo terminal
  await runner.run(arguments);
}
