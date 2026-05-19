import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.8';

Future<void> main(List<String> arguments) async {
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

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); 
    
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');


  var articleContent = await getWikipediaArticle(articleTitle);
  

  print(articleContent);
Future<void> searchWikipedia(List<String>? arguments) async {
  if (arguments == null || arguments.isEmpty) {
    print('Erro: Nenhum termo de busca foi informado.');
    return;
  }

  final query = arguments.join(' ');

  print('Iniciando busca na Wikipedia por: "$query"...');

  try {
    // Chama a nova função
    final result = await getWikipediaArticle(query);

    // Converte o JSON retornado em Map
    final data = jsonDecode(result);

    final title = data['title'] ?? query;
    final extract = data['extract'] ?? 'Nenhum resumo disponível.';

    print('\n========================================');
    print('Título: $title');
    print('========================================');
    print(extract);
    print('========================================\n');
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'",
  );
}

// Nova função solicitada
Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". '
      'Status code: ${response.statusCode}';
}
