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