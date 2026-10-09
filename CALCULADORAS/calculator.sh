#!/bin/bash

echo "=================================="
echo "      CALCULADORA EM SHELL        "
echo "=================================="

while true
do

    # Primeiro valor
    while true
    do
        read -p "Digite o primeiro valor: " primeiro_valor

        if echo "$primeiro_valor" | grep -Eq '^-?[0-9]+([.][0-9]+)?$'
        then
            break
        else
            echo "Entrada inválida. Digite apenas números."
        fi
    done

    # Operador
    echo
    echo "Operações disponíveis:"
    echo "Aritméticas: +  -  *  /  **  %  //"
    echo "Comparação : >  <  ==  !=  <=  >="

    while true
    do
        read -p "Escolha uma operação: " operador

        case "$operador" in
            "+"|"-"|"*"|"/"|"**"|"%"|"//"|">"|"<"|"=="|"!="|"<="|">=")
                break
                ;;
            *)
                echo "Operador inválido. Tente novamente."
                ;;
        esac
    done

    # Segundo valor
    while true
    do
        read -p "Digite o segundo valor: " segundo_valor

        if echo "$segundo_valor" | grep -Eq '^-?[0-9]+([.][0-9]+)?$'
        then
            break
        else
            echo "Entrada inválida. Digite apenas números."
        fi
    done

    echo
    echo "================ RESULTADO ================"
    echo

    case "$operador" in

        "+")
            resultado=$(echo "$primeiro_valor + $segundo_valor" | bc)
            echo "A soma de $primeiro_valor e $segundo_valor é $resultado."
            ;;

        "-")
            resultado=$(echo "$primeiro_valor - $segundo_valor" | bc)
            echo "A diferença entre $primeiro_valor e $segundo_valor é $resultado."
            ;;

        "*")
            resultado=$(echo "$primeiro_valor * $segundo_valor" | bc)
            echo "O produto de $primeiro_valor e $segundo_valor é $resultado."
            ;;

        "/")
            if [ "$(echo "$segundo_valor == 0" | bc)" -eq 1 ]
            then
                echo "Não é possível dividir por zero."
            else
                resultado=$(echo "scale=4; $primeiro_valor / $segundo_valor" | bc)
                echo "A divisão de $primeiro_valor por $segundo_valor é $resultado."
            fi
            ;;

        "**")
            resultado=$(echo "$primeiro_valor ^ $segundo_valor" | bc)
            echo "$primeiro_valor elevado a $segundo_valor resulta em $resultado."
            ;;

        "%")
            if [ "$(echo "$segundo_valor == 0" | bc)" -eq 1 ]
            then
                echo "Não é possível dividir por zero."
            else
                resultado=$(echo "$primeiro_valor % $segundo_valor" | bc)
                echo "O resto da divisão entre $primeiro_valor e $segundo_valor é $resultado."
            fi
            ;;

        "//")
            if [ "$(echo "$segundo_valor == 0" | bc)" -eq 1 ]
            then
                echo "Não é possível dividir por zero."
            else
                resultado=$(echo "$primeiro_valor / $segundo_valor" | bc)
                echo "A divisão inteira entre $primeiro_valor e $segundo_valor é $resultado."
            fi
            ;;

        ">")
            if [ "$(echo "$primeiro_valor > $segundo_valor" | bc)" -eq 1 ]
            then
                echo "Verdadeiro! $primeiro_valor é maior que $segundo_valor."
            else
                echo "Falso! $primeiro_valor não é maior que $segundo_valor."
            fi
            ;;

        "<")
            if [ "$(echo "$primeiro_valor < $segundo_valor" | bc)" -eq 1 ]
            then
                echo "Verdadeiro! $primeiro_valor é menor que $segundo_valor."
            else
                echo "Falso! $primeiro_valor não é menor que $segundo_valor."
            fi
            ;;

        "==")
            if [ "$(echo "$primeiro_valor == $segundo_valor" | bc)" -eq 1 ]
            then
                echo "Verdadeiro! $primeiro_valor é igual a $segundo_valor."
            else
                echo "Falso! $primeiro_valor é diferente de $segundo_valor."
            fi
            ;;

        "!=")
            if [ "$(echo "$primeiro_valor != $segundo_valor" | bc)" -eq 1 ]
            then
                echo "Verdadeiro! $primeiro_valor é diferente de $segundo_valor."
            else
                echo "Falso! $primeiro_valor é igual a $segundo_valor."
            fi
            ;;

        "<=")
            if [ "$(echo "$primeiro_valor <= $segundo_valor" | bc)" -eq 1 ]
            then
                echo "Verdadeiro! $primeiro_valor é menor ou igual a $segundo_valor."
            else
                echo "Falso! $primeiro_valor não é menor nem igual a $segundo_valor."
            fi
            ;;

        ">=")
            if [ "$(echo "$primeiro_valor >= $segundo_valor" | bc)" -eq 1 ]
            then
                echo "Verdadeiro! $primeiro_valor é maior ou igual a $segundo_valor."
            else
                echo "Falso! $primeiro_valor não é maior nem igual a $segundo_valor."
            fi
            ;;
    esac

    echo
    echo "==========================================="
    echo

    while true
    do
        read -p "Deseja realizar outro cálculo? (s/n): " continuar

        continuar=$(echo "$continuar" | tr '[:upper:]' '[:lower:]')

        if [ "$continuar" = "s" ]
        then
            break
        elif [ "$continuar" = "n" ]
        then
            echo
            echo "Obrigado por utilizar a calculadora. Até logo!"
            exit 0
        else
            echo
            echo "Resposta inválida."
            echo "Digite apenas 's' para sim ou 'n' para não."
            echo
        fi
    done

done
