/// Dartpedia CLI
/// Esta é a primeira versão da lição 4 feita por Guilherme Monteiro.
/// Projeto desenvolvido para consumir a API da Wikipedia e gerenciar 
/// argumentos através da linha de comando.
library;

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.8';

Future<void> main(List<String> arguments) async {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia' || arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    await searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

Future<void> searchWikipedia(List<String>? arguments) async {
  final String query;

  if (arguments == null || arguments.isEmpty) {
    print('Por favor, informe o título de um artigo.');
    stdout.write('> ');
    final inputFromStdin = stdin.readLineSync();

    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('Erro: Nenhum termo de busca foi informado. Encerrando.');
      return;
    }
    query = inputFromStdin;
  } else {
    query = arguments.join(' ');
  }

  print('Iniciando busca na Wikipedia por: "$query"... Please wait.');

  try {
    final result = await getWikipediaArticle(query);

    if (result.startsWith('Error:')) {
      print(result);
      return;
    }

    final data = jsonDecode(result);
    final title = data['title'] ?? query;
    final extract = data['extract'] ?? 'Nenhum resumo disponível.';

    print('\n========================================');
    print('Título: $title');
    print('========================================');
    print(extract);
    print('========================================\n');
  } catch (e) {
    print('Ocorreu um erro ao processar os dados: $e');
  }
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.parse(
    'https://pt.wikipedia.org/api/rest_v1/page/summary/${Uri.encodeComponent(articleTitle)}'
  );

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return utf8.decode(response.bodyBytes);
    } else if (response.statusCode == 404) {
      return 'Error: O artigo "$articleTitle" não foi encontrado na Wikipedia.';
    } else {
      return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
    }
  } catch (e) {
    return 'Error: Ocorreu um erro ao se conectar à API: $e';
  }
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>', 'wikipedia <ARTICLE-TITLE>'",
  );
}
