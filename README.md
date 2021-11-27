# Trabalho Prático 1 - Programação Funcional e em Lógica

## Descrição dos testes usados para as funções
> TODO

## Explicação do funcionamento das funções implementadas
Exercício 1.1
> A função *fibRec* implementa usando recursividade a sequência de Fibonacci.
> Retorna o elemento de ordem N calculando a soma entre o elemento N-1 e o elemento N-2, chamando assim a função recursivamente até chegar ao caso base, que será o 0 e o 1.

Exercício 1.2
> TODO

Exercício 1.3
>  A resolução do problema da sequência de Fibonacci usando listas infinitas foi resolvida com a implementação 3 funções:
>
> A primeira função, *listaInfinita*, vai gerar uma lista infinita com a sequência de Fibonacci;
>
> No entanto, se simplesmente fizermos *print* da primeira função, a mesma irá estar sempre a gerar novos números.
> O objetivo seria retornar o o elemento de ordem N, daí o uso da segunda função,  *takeListaInfinita*, que retorna uma lista até esse mesmo elemento;
>
> Por fim, a terceira função, *fibListaInfinita*, retorna apenas o elemento N.

Exercício 3
> As funções implementadas no exercício 3 começam por converter o input *BigNumber* introduzidos para *Int* para posteriormente chamar as funções implementadas nos exercícios da alínea 1. Antes de retornar, a função converte o resultado de *Int* outra vez para *BigNumber*.

Exercício 5
> TODO

## Estratégia para a implementação das funções do Exercício 2
> TODO

## Exercício 4
> Os tipos de variáveis *Int* e *Integer* apesar de representarem ambos inteiros, têm algumas diferenças entre si.
>
> O tipo *Int* é um tipo de variável limitado, o que significa que tem um *minBound* e um *maxBound*.
> É possível saber estes limites correndo o comando *(minBound, maxBound) :: (Int, Int)*, que retorna seguinte o tuplo: (-9223372036854775808, 9223372036854775807).
>
> Por outro lado o tipo *Integer* não tem limites estabelecidos, apesar de ser limitado à memória da máquina em questão.
>
>
> Tendo em conta o que foi dito em cima, e sabendo que não existe propriamente um limite para o tipo de variáveis *Integer*, vamos considerar para este problema números para os quais o *runtime* das funções é aceitável.
> Posto isto, para a função *fibRec* conseguimos testar números até 30, enquanto que para a *fibListaInfinita* conseguimos até 5000.
> Testando as mesmas funções para o tipo criado no exercício 2, *BigNumber*, chegamos à conclusão que a nossa implementação terá um *runtime* idêntico ao uso de *Integer* e *Int*.
>
> Por fim, os testes feitos para chegar a estas conclusões estão apresentados no final do ficheiro *Fib.hs*

### Projeto desenvolvido por:
> Ana Sofia up+++++
>
> Mónica Pereira up201905753
