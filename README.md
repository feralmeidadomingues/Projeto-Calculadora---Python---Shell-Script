# Calculadora em Python e Shell Script

## Sobre o Projeto

Este projeto apresenta duas versões executáveis de uma calculadora desenvolvidas em Python e Shell Script (Bash). Ambas possuem as mesmas funcionalidades, permitindo realizar operações aritméticas e comparações por meio de uma interface interativa no terminal.

O objetivo do projeto é demonstrar a aplicação dos mesmos conceitos de lógica de programação em linguagens diferentes.

## Tecnologias Utilizadas

* Python 3
* Shell Script (Bash)
* Linux (Ubuntu e distribuições compatíveis)
* Git
* GitHub

## Funcionalidades

### Operações Aritméticas

* Soma (`+`)
* Subtração (`-`)
* Multiplicação (`*`)
* Divisão (`/`)
* Potenciação (`**`)
* Resto da divisão (`%`)
* Divisão inteira (`//`)

### Operações de Comparação

* Maior que (`>`)
* Menor que (`<`)
* Igual a (`==`)
* Diferente de (`!=`)
* Menor ou igual (`<=`)
* Maior ou igual (`>=`)

### Recursos Adicionais

* Validação de números digitados
* Validação de operadores
* Tratamento de divisão por zero
* Validação da opção de saída
* Execução contínua até o usuário decidir encerrar o programa

## Estrutura do Projeto

```text
calculadora/
├── calculator.py
├── calculator.sh
├── python_install.sh
└── README.md
```

## Requisitos

### Para Executar a Versão Python

Instale ou atualize o Python 3 no sistema:

```bash
sudo apt update
sudo apt install python3
```

Ou utilize o script disponibilizado no projeto:

```bash
chmod +x python_install.sh
./python_install.sh
```

### Para Executar a Versão Shell Script

Conceda permissão de execução ao arquivo:

```bash
chmod +x calculator.sh
```

Caso o utilitário `bc` não esteja instalado, execute:

```bash
sudo apt update
sudo apt install bc
```

## Como Executar

### Versão Python

```bash
python3 calculator.py
```

### Versão Shell Script

```bash
./calculator.sh
```

## Exemplo de Utilização

```text
Digite o primeiro valor: 10
Digite o segundo valor: 5
Escolha uma operação: *

================ RESULTADO ================

O produto de 10.0 e 5.0 é 50.0.

Deseja realizar outro cálculo? (s/n):
```

## Conceitos Aplicados

Durante o desenvolvimento, foram utilizados os seguintes conceitos:

* Variáveis
* Estruturas condicionais (`if`, `elif`, `else`)
* Estruturas de repetição (`while`)
* Entrada e saída de dados
* Conversão de tipos
* Operadores aritméticos
* Operadores relacionais
* Tratamento de exceções
* Validação de entradas
* Automação com Shell Script
* Execução de programas em ambiente Linux

## Objetivo

Desenvolver uma calculadora simples para praticar conceitos fundamentais de programação, lógica computacional, interação via terminal e implementação da mesma solução em diferentes linguagens.

## Autora

**Fernanda Domingues**

Projeto desenvolvido para fins de estudo e prática de programação em Python e Shell Script.
