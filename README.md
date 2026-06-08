# Dartpedia

## Integrantes da Equipe

Guilherme Monteiro
Bianca
Isaac
Giulia

## Sobre o Projeto

O **Dartpedia** é um aplicativo desenvolvido em Dart com o objetivo de fornecer uma interface de linha de comando (CLI) para execução de comandos específicos. O projeto utiliza o pacote `command_runner` para organizar e executar comandos de forma simples e eficiente, permitindo que o usuário interaja com o sistema através do terminal.

## Como Executar o Projeto

Certifique-se de ter o **Dart SDK** instalado em sua máquina.

No terminal, navegue até a pasta do projeto e execute:

```bash
dart run
```

Ou execute um comando específico passando argumentos:

```bash

```

## Exemplos de Uso

### Exibir a versão do aplicativo

```bash
dart run version
```

Saída esperada:

```text
0.8.0
```

### Exibir ajuda

```bash
dart run help
```

Exemplo de saída:

```text
Lista de comandos disponíveis:
- help
- version
```

## Estrutura Principal do Código

O programa inicia pela função `main()`, que:

1. Cria uma instância de `CommandRunner`.
2. Recebe os argumentos digitados pelo usuário no terminal.
3. Executa o comando correspondente.
4. Permite operações assíncronas utilizando `async` e `await`.

## Tecnologias Utilizadas

* Dart
* Package `http`
* Package `command_runner`

## Versão Atual

**0.8.0**
