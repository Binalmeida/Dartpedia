/*-----------------------------------------------------------------------------

Informacoes:

O aplicativo CLI faz parte do projeto Dartpedia.

Este programa cria um aplicativo de linha de comando em Dart que permite
executar comandos simples como:

- help
- version
- search <ARTICLE-TITLE>

O comando 'search' simula a busca de artigos com base no titulo informado.

Arquivo: /dartpedia/cli/bin/cli.dart

Autor       : Bianca de Oliveira Almeida <boliveiraalmeida83@gmail.com>
Manutencao  :

-------------------------------------------------------------------------------

Funcionamento:

Execute o programa com:

dart run

Ou com comandos especificos:

dart run cli.dart help
dart run cli.dart version
dart run cli.dart search Dart Programming

-------------------------------------------------------------------------------

Padrao de Versionamento:

v = versao
. = separador

-------------------------------------------------------------------------------

Historico de Versoes:

(As implementacoes completas estao comentadas abaixo)

-----------------------------------------------------------------------------*/


/*-----------------------------------------------------------------------------
Versao: v1.0
Data  : 30/03/2026

Descricao:
- Codigo inicial

Saida esperada:
dart run
Hello world: 42!
-----------------------------------------------------------------------------*/

/*v1.0
import 'package:cli/cli.dart' as cli;
	
void main(List<String> arguments) {
  print('Hello world: ${cli.calculate()}!');
}
*/


/*-----------------------------------------------------------------------------
Versao: v1.1
Data  : 30/03/2026

Descricao:
- Alteracao para "Hello, Dart!"

Saida esperada:
dart run
Hello, Dart!
-----------------------------------------------------------------------------*/

/*v1.1

void main(List<String> arguments) {
  print('Hello, Dart!'); // Change this line
}
*/


/*-----------------------------------------------------------------------------
Versao: v1.2
Data  : 30/03/2026

Descricao:
- Implementacao de version

Comandos:
dart run cli.dart
dart run cli.dart version

Saida esperada:
Hello, Dart!
Dartpedia CLI version 0.0.1
-----------------------------------------------------------------------------*/

/*v1.2 


const version = '0.0.1'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}


void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

*/


/*-----------------------------------------------------------------------------
Versao: v1.3
Data  : 06/04/2026

Descricao:
- Implementacao do help

Comandos:
dart run cli.dart
dart run cli.dart help
dart run cli.dart version

Saida esperada:
The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'
Dartpedia CLI version 1.3
-----------------------------------------------------------------------------*/

/* v1.3 


const version = '1.3'; 

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

*/


/*-----------------------------------------------------------------------------
Versao: v1.4
Data  : 06/04/2026

Descricao:
- Implementacao inicial do search

Comando:
dart run cli.dart search

Saida esperada:
Search command recognized!
-----------------------------------------------------------------------------*/

/* v1.4 


const version = '1.4';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

*/


/*-----------------------------------------------------------------------------
Versao: v1.5
Data  : 06/04/2026

Descricao:
- Criacao da funcao searchWikipedia

Comando:
dart run cli.dart search Dart Programming

Saida esperada:
searchWikipedia received arguments: [Dart, Programming]
-----------------------------------------------------------------------------*/

/* v1.5 


const version = '1.5';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

void printUsage() { 
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

*/


/*-----------------------------------------------------------------------------
Versao: v1.6
Data  : 06/04/2026

Descricao:
- Integracao com argumentos

Comandos:
dart run cli.dart search Dart Programming
dart run cli.dart search

Saida esperada:
searchWikipedia received arguments: [Dart, Programming]
searchWikipedia received arguments: null
-----------------------------------------------------------------------------*/

/* v1.6


const version = '1.6';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

*/


/*-----------------------------------------------------------------------------
Versao: v1.7
Data  : 06/04/2026

Descricao:
- Entrada interativa

Comandos:
dart run cli.dart search
(digite: Flutter)

Saida esperada:
Please provide an article title.
Flutter
Current article title: Flutter
-----------------------------------------------------------------------------*/

//  v1.7



import 'package:cli/cli.dart' as cli;

const version = '1.7';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}

// ... (your existing printUsage() function)

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}



/*-----------------------------------------------------------------------------
Versao: v1.8
Data  : 07/04/2026

Descricao:
- Simulacao final da busca

Comandos:
dart run cli.dart search Dart Programming

Saida esperada:
Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")
-----------------------------------------------------------------------------*/

//v.1.8 - atual

/*

import 'dart:io';

const version = '1.8';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;	
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
*/
