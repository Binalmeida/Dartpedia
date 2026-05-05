/*-----------------------------------------------------------------------------

Informacoes:  
   
O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.
   
cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre o cli; nosso aplicativo.

site        :

Autor       : Isaac Gonçalves da Silva Lima <isaac.silvalima15@gmail.com>

Manutencao  : Isaac Gonçalves da Silva Lima <isaac.silvalima15@gmail.com>

-------------------------------------------------------------------------------

Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

Dentro da pasta dartpedia em /home/irineu.caldeira/dartpedia/cli rode o comando
dart run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

Obs. Importante ! Este aplicativo este em desenvolvimento e ao longo do tempo o
comportamento do aplicativo pode mudar.

-------------------------------------------------------------------------------

Dicionario do Versionamento:

v = versao

0 = Inicio do versionamento

. = Implementacao de versionamento

1 = Proxima versao, 2, proxima versao, e assim por diante.

-------------------------------------------------------------------------------

Historico do Versionamento:

-------------------------------------------------------------------------------

const version = '0.0.1';

import 'package:cli/cli.dart' as cli;
// Importa o pacote cli e usa o apelido "cli" para acessar suas funções

void main(List<String> arguments) {
// Função principal do programa (ponto de entrada)

    print('Hello world: ${cli.calculate()}!');
// Imprime "Hello world" junto com o resultado da função calculate() do pacote cli

}

-------------------------------------------------------------------------------


const version = '0.0.2';

void main(List<String> arguments) {
// Função principal

    print('Hello, Dart!');
// Imprime uma saudação simples no terminal

}

-------------------------------------------------------------------------------


const version = '0.0.3';


void main(List<String> arguments) {

    if (arguments.isEmpty) {
    // Verifica se nenhum argumento foi passado

            print('Hello, Dart!');
    // Mostra mensagem padrão

    } else if (arguments.first == 'version') {
    // Verifica se o comando digitado foi "version"

            print('Dartpedia CLI version $version');
    // Exibe a versão do programa

    }
}

-------------------------------------------------------------------------------


const version = '0.0.4';


void main(List<String> arguments) {

    if (arguments.isEmpty) {
    // Sem argumentos

        print('Hello, Dart!');
    // Mensagem padrão

    } else if (arguments.first == 'version') {
    // Se for comando version

        print('Dartpedia CLI version $version');
    // Mostra versão

    }

}

void printUsage() {
// Função criada para mostrar instruções de uso

  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
// Lista os comandos disponíveis para o usuário

}

-------------------------------------------------------------------------------



const version = '0.0.5';


void main(List<String> arguments) {

    if (arguments.isEmpty || arguments.first == 'help') {
    // Se não tiver argumento OU for "help"

        printUsage();
    // Mostra instruções de uso

    } else if (arguments.first == 'version') {
    // Se for "version"

        print('Dartpedia CLI version $version');
    // Exibe versão

    } else {
    // Qualquer outro comando

        printUsage();
    // Mostra ajuda (fallback)

    }
}

void printUsage() {
// Função de ajuda

    print(
    "The following commends are valid: 'help', 'version', 'search >ARTICLE-TITLE>'");
// Exibe comandos válidos

}

-------------------------------------------------------------------------------


const version = '0.0.6';


void main(List<String> arguments) {

  if (arguments.isEmpty || arguments.first == 'help') {
  // Sem argumentos ou comando help

    printUsage();
  // Mostra ajuda

  } else if (arguments.first == 'version') {
  // Se for version

    print('Dartpedia CLI version $version');
  // Exibe versão

  } else if (arguments.first == 'search') {
  // Se for comando search

    print('Search command recognized!');
  // Apenas reconhece o comando (placeholder)

  } else {


    printUsage();


  }
}

void printUsage() {

  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
// Lista comandos disponíveis

}


-------------------------------------------------------------------------------

*/


const version = '0.0.7';
 

void main(List<String> arguments) {

    if (arguments.isEmpty || arguments.first == 'help') {
    // Sem argumentos ou help

            printUsage();
    // Mostra ajuda

    } else if (arguments.first == 'version') {
    // Comando version

            print('Dartpedia CLI version $version');
    // Exibe versão

    } else if (arguments.first == 'search') {
    // Comando search

    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    // Se houver mais argumentos, pega eles (ex: título do artigo)
    // Senão, define como null

            searchWikipedia(inputArgs);
    // Chama função de busca passando argumentos

    } else {
    // Comando inválido

            printUsage();
    // Mostra ajuda

    }
}

void searchWikipedia(List<String>? arguments) {
// Função responsável pela busca (ainda em desenvolvimento)

  print('searchWikipedia received arguments: $arguments');
// Exibe os argumentos recebidos (debug)

}

void printUsage() {

    print(
        "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
// Mostra comandos disponíveis

}
