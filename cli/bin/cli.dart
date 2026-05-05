const version = '0.0.1';

import 'package:cli/cli.dart' as cli;
// Importa o pacote cli e usa o apelido "cli" para acessar suas funções

void main(List<String> arguments) {
// Função principal do programa (ponto de entrada)

    print('Hello world: ${cli.calculate()}!');
// Imprime "Hello world" junto com o resultado da função calculate() do pacote cli

}

