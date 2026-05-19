/// Dartpedia CLI
/// 
/// Esta é a terceira versão da lição 4 feita por Giulia Melise.
/// Projeto desenvolvido para consumir a API da Wikipedia e gerenciar 
/// argumentos através da linha de comando.
library dartpedia_cli;

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

Future<void> main(List<String> arguments) async {
  // Cria uma instância do CommandRunner
  var runner = CommandRunner();

  // Executa os argumentos recebidos pela CLI
  await runner.run(arguments);
}
