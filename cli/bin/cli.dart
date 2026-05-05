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