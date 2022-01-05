# Trabalho Prático 2 - Programação Funcional e em Lógica

## Instalação e Execução
### Linux
### Windows
> Executar o programa *sicstus 4.7.0*.
>
> Executar o comando `consult()` com o caminho absoluto para o ficheiro `src/play.pl`, e de seguida executar o predicado de inicio de jogo através do comando `play.`

## Descrição do jogo - Five Field Kono
> Five Field Kono é um jogo tradicional Coreano que é jogado por 2 jogadores, cada um com 7 peças, num tabuleiro quadrado de 5x5.
> Cada peça pode mover-se um quadrado na diagonal, e não há capturas nem saltos. O objetivo do jogo é mover as 7 peças até ao lado contrário do tabuleiro, onde as peças do adversário estavam no inicio do jogo. 
> O primeiro jogador a realizar esta tarefa ganha o jogo. 

## Lógica do Jogo
> Nesta secção vai ser explicado a implementação da lógica do jogo em Prolog.

### Representação interna do estado do jogo
* Tabuleiro Inicial
  
``` 
startBoard(
    [
    [1, 1, 1, 1, 1],
    [1, 0, 0, 0, 1],
    [0, 0, 0, 0, 0],
    [2, 0, 0, 0, 2],
    [2, 2, 2, 2, 2]
    ]
).
```

* Exemplo de Tabuleiro Intermédio

```
gameState(
    [
    [1, 0, 1, 1, 1],
    [1, 0, 1, 0, 0],
    [0, 2, 0, 1, 0],
    [0, 0, 2, 0, 2],
    [2, 0, 2, 2, 2]
    ]
).
```

* Exemplo de Tabuleiro Final com o Jogador 1 vecedor
  
```
endBoard1(
    [
    [2, 2, 2, 2, 2],
    [2, 0, 0, 0, 0],
    [0, 0, 0, 2, 0],
    [1, 0, 0, 0, 1],
    [1, 1, 1, 1, 1]
    ]
).
```

* Exemplo de Tabuleiro Final com o Jogador 2 vecedor 

```
endBoard2(
    [
    [1, 1, 1, 1, 1],
    [1, 0, 0, 0, 0],
    [0, 0, 0, 1, 0],
    [2, 0, 0, 0, 2],
    [2, 2, 2, 2, 2]
    ]
).
```

### Visualização do estado de jogo
### Execução de Jogadas
### Final do Jogo
### Lista de Jogadas Válidas
### Jogada do Computador

## Conclusões
### Problemas do trabalho desenvolvido
### Possíveis melhorias

## Bibliografia
> https://sicstus.sics.se/sicstus/docs/latest4/html/sicstus.html/
> 
> https://boardgamegeek.com/boardgame/25471/five-field-kono

### Projeto desenvolvido por:
> Sofia Teixeira up201806629
>
> Mónica Pereira up201905753