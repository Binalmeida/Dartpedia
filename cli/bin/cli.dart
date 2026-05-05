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