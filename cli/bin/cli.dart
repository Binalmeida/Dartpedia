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