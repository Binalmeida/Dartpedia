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