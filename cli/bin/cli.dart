import 'dart:io';
import 'package:http/http.dart' as http;

const String version = '0.0.8';

Future<void> runCommands(List<String> arguments) async {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;

    await searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

Future<void> searchWikipedia(List<String>? arguments) async {
  print('Iniciando busca na Wikipedia...');

  // Simula tempo de resposta de uma API (comportamento assíncrono de 2 segundos)
  await Future.delayed(const Duration(seconds: 2));

  if (arguments == null || arguments.isEmpty) {
    print('Nenhum termo de busca foi informado.');
    return;
  }

  final query = arguments.join(' ');

  print('Resultado da busca para "$query":');
  print('- Página encontrada: $query (simulado)');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

/// Função main que o Dart executa ao rodar a CLI
Future<void> main(List<String> arguments) async {
  // Passa os argumentos da linha de comando para a função que gerencia os comandos
  await runCommands(arguments);
}
