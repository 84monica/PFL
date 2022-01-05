# Trabalho Prático 2 - Programação Funcional e em Lógica

## Instalação e Execução
### Linux
> Executar o programa *sicstus 4.7.0*.
>
> Executar o comando `consult()` com o caminho absoluto para o ficheiro `src/play.pl`, e de seguida executar o predicado de inicio de jogo através do comando `play.`

### Windows

## Descrição do jogo - Five Field Kono
> Five Field Kono é um jogo tradicional Coreano que é jogado por 2 jogadores, cada um com 7 peças, num tabuleiro quadrado de 5x5.
> Cada peça pode mover-se um quadrado na diagonal, e não há capturas nem saltos. O objetivo do jogo é mover as 7 peças até ao lado contrário do tabuleiro, onde as peças do adversário estavam no inicio do jogo. 
> O primeiro jogador a realizar esta tarefa ganha o jogo. 

## Lógica do Jogo
> Nesta secção vai ser explicado detalhadamente a implementação da lógica do jogo *Five Field Kono* em Prolog.

### Representação interna do estado do jogo
> Para a representação poder ser a mais evidente possível para o utilizador, decidimos representar o Jogador 1 pelo carater *1* e o Jogador 2 pelo carater *2*.
> 
> Assim sendo os tabuleiros, que são de dimensões 5*5, terão a representação apresentada a seguir:

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

* Exemplo de Tabuleiro Final com o Jogador 1 vencedor
  
```
endBoard1(
    [
    [2, 2, 0, 0, 2],
    [2, 2, 0, 0, 2],
    [0, 0, 0, 2, 0],
    [1, 0, 0, 0, 1],
    [1, 1, 1, 1, 1]
    ]
).
```

* Exemplo de Tabuleiro Final com o Jogador 2 vencedor 

```
endBoard2(
    [
    [2, 2, 2, 2, 2],
    [2, 0, 0, 0, 2],
    [0, 1, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [1, 0, 1, 1, 1]
    ]
).
```
> Estes exemplos de tabuleiros estão também presentes no ficheiro *board.pl*.

### Visualização do estado de jogo
> Os predicados de visualização do jogo está implementado em diferentes ficheiros, entre os quais os ficheiros *view.pl* e *menus.pl*.

* Menus
> Os menus implementados estão presentes no ficheiro *menus.pl*.
> Foram implementados dois menus, um de inicio de jogo e um quando o jogo termina.
> 
> A seguir mostramos imagens dos menus que foram implementados.
> ...

* Visualização do Tabuleiro
> O predicado de visualização do tabuleiro chama-se `display_game(+GameState)` e está presente no ficheiro *view.pl*.
> Este predicado é de implementação muito simples. Consiste basicamente em percorrer o Tabuleiro e imprimir os dados do mesmo no ecrã. Este predicado tem como predicados auxiliares `showRow`, `showCol` e `cls`.
> Os dois primeiros são usados para percorrer o tabuleiro para posteriormente imprimir no ecrã. O terceiro, `cls`, vai fazer um *clean* da consola de modo ao usuário ter uma melhor experiência de jogo.

* Interação com o Jogador
> As interações com o utilizador estão presentes num outro ficheiro chamado *user.pl*.
> Nele estão contidos diversos predicados essenciais ao jogo. 

> O predicado `getMove(-Move, +Player)` recebe o input do utilizador, verificando se está de acordo com o pretendido através do predicado `validateInput(Input, IsValid)`. 

> Posteriormente vai ser feita uma validação do movimento escolhido pelo utilizador através do predicado `validateMove(GameState, Player, Move, IsValid)`. 

> Se as condições de validação se verificarem é então processado o input através do predicado `process(Input, Move)`. 


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