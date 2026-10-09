print("==================================")
print("      CALCULADORA EM PYTHON       ")
print("==================================")

while True:

    # Primeiro valor
    while True:
        try:
            primeiro_valor = float(
                input("\nDigite o primeiro valor: ")
            )
            break
        except ValueError:
            print("Entrada inválida. Digite apenas números.")

    # Operador
    print("\nOperações disponíveis:")
    print("Aritméticas: +  -  *  /  **  %  //")
    print("Comparação : >  <  ==  !=  <=  >=")

    while True:
        operador = input(
            "\nEscolha uma operação: "
        ).strip()

        if operador in [
            "+", "-", "*", "/", "**", "%", "//",
            ">", "<", "==", "!=", "<=", ">="
        ]:
            break

        print("Operador inválido. Tente novamente.")

    # Segundo valor
    while True:
        try:
            segundo_valor = float(
                input("Digite o segundo valor: ")
            )
            break
        except ValueError:
            print("Entrada inválida. Digite apenas números.")

    print("\n================ RESULTADO ================\n")

    # OPERAÇÕES ARITMÉTICAS

    if operador == "+":
        resultado = primeiro_valor + segundo_valor
        print(
            f"A soma de {primeiro_valor} e {segundo_valor} é {resultado}."
        )

    elif operador == "-":
        resultado = primeiro_valor - segundo_valor
        print(
            f"A diferença entre {primeiro_valor} e {segundo_valor} é {resultado}."
        )

    elif operador == "*":
        resultado = primeiro_valor * segundo_valor
        print(
            f"O produto de {primeiro_valor} e {segundo_valor} é {resultado}."
        )

    elif operador == "/":
        if segundo_valor == 0:
            print("Não é possível dividir por zero.")
        else:
            resultado = primeiro_valor / segundo_valor
            print(
                f"A divisão de {primeiro_valor} por {segundo_valor} é {resultado}."
            )

    elif operador == "**":
        resultado = primeiro_valor ** segundo_valor
        print(
            f"{primeiro_valor} elevado a {segundo_valor} resulta em {resultado}."
        )

    elif operador == "%":
        if segundo_valor == 0:
            print("Não é possível dividir por zero.")
        else:
            resultado = primeiro_valor % segundo_valor
            print(
                f"O resto da divisão entre {primeiro_valor} e {segundo_valor} é {resultado}."
            )

    elif operador == "//":
        if segundo_valor == 0:
            print("Não é possível dividir por zero.")
        else:
            resultado = primeiro_valor // segundo_valor
            print(
                f"A divisão inteira entre {primeiro_valor} e {segundo_valor} é {resultado}."
            )

    # COMPARAÇÕES

    elif operador == ">":
        if primeiro_valor > segundo_valor:
            print(
                f"Verdadeiro! {primeiro_valor} é maior que {segundo_valor}."
            )
        else:
            print(
                f"Falso! {primeiro_valor} não é maior que {segundo_valor}."
            )

    elif operador == "<":
        if primeiro_valor < segundo_valor:
            print(
                f"Verdadeiro! {primeiro_valor} é menor que {segundo_valor}."
            )
        else:
            print(
                f"Falso! {primeiro_valor} não é menor que {segundo_valor}."
            )

    elif operador == "==":
        if primeiro_valor == segundo_valor:
            print(
                f"Verdadeiro! {primeiro_valor} é igual a {segundo_valor}."
            )
        else:
            print(
                f"Falso! {primeiro_valor} é diferente de {segundo_valor}."
            )

    elif operador == "!=":
        if primeiro_valor != segundo_valor:
            print(
                f"Verdadeiro! {primeiro_valor} é diferente de {segundo_valor}."
            )
        else:
            print(
                f"Falso! {primeiro_valor} é igual a {segundo_valor}."
            )

    elif operador == "<=":
        if primeiro_valor <= segundo_valor:
            print(
                f"Verdadeiro! {primeiro_valor} é menor ou igual a {segundo_valor}."
            )
        else:
            print(
                f"Falso! {primeiro_valor} não é menor nem igual a {segundo_valor}."
            )

    elif operador == ">=":
        if primeiro_valor >= segundo_valor:
            print(
                f"Verdadeiro! {primeiro_valor} é maior ou igual a {segundo_valor}."
            )
        else:
            print(
                f"Falso! {primeiro_valor} não é maior nem igual a {segundo_valor}."
            )

    print("\n===========================================\n")

    while True:

        continuar = input(
            "Deseja realizar outro cálculo? (s/n): "
        ).strip().lower()

        if continuar == "s":
            break

        elif continuar == "n":
            print("\nObrigado por utilizar a calculadora. Até logo!")
            raise SystemExit

        else:
            print(
                "\nOpção inválida. Digite apenas 's' para sim ou 'n'.\n"
            )
