# Predicados interessantes em Prolog

| Predicado         | Para que serve                                   | Caso de uso                                                       |
| ----------------- | ------------------------------------------------ | ----------------------------------------------------------------- |
| `member/2`        | pertence / gerar elementos                       | `member(X, [1,2,3]).` → gera `X = 1`, `X = 2`, `X = 3`            |
| `append/3`        | concatenar / dividir listas                      | `append([1,2], [3,4], X).` → `X = [1,2,3,4]`                      |
| `length/2`        | obter / gerar tamanho de lista                   | `length([a,b,c], N).` → `N = 3`                                   |
| `nth0/3`          | acessar índice começando em 0                    | `nth0(1, [a,b,c], X).` → `X = b`                                  |
| `nth1/3`          | acessar índice começando em 1                    | `nth1(1, [a,b,c], X).` → `X = a`                                  |
| `last/2`          | obter / gerar último elemento                    | `last([1,2,3], X).` → `X = 3`                                     |
| `reverse/2`       | inverter lista                                   | `reverse([1,2,3], X).` → `X = [3,2,1]`                            |
| `sort/2`          | ordenar + remover duplicatas                     | `sort([3,1,2,3,1], X).` → `X = [1,2,3]`                           |
| `msort/2`         | ordenar mantendo duplicatas                      | `msort([3,1,2,3,1], X).` → `X = [1,1,2,3,3]`                      |
| `min_list/2`      | obter menor elemento                             | `min_list([7,2,9,4], X).` → `X = 2`                               |
| `max_list/2`      | obter maior elemento                             | `max_list([7,2,9,4], X).` → `X = 9`                               |
| `sum_list/2`      | somar elementos                                  | `sum_list([10,20,30], X).` → `X = 60`                             |
| `maplist/...`     | aplicar predicado aos elementos                  | `maplist(number_string, [A,B], ["10","20"]).` → `A = 10, B = 20`  |
| `include/3`       | filtrar mantendo os que satisfazem um predicado  | `include(par, [1,2,3,4], X).` → `X = [2,4]`                       |
| `exclude/3`       | filtrar removendo os que satisfazem um predicado | `exclude(par, [1,2,3,4], X).` → `X = [1,3]`                       |
| `between/3`       | gerar valores em intervalo                       | `between(1, 3, X).` → `X = 1`, `X = 2`, `X = 3`                   |
| `is_list/1`       | verificar se algo é uma lista                    | `is_list([1,2,3]).` → `true`                                      |
| `number_string/2` | converter número ↔ string                        | `number_string(42, "42").` → `true`                               |
| `split_string/4`  | separar uma string em partes                     | `split_string("10 20 30", " ", " ", X).` → `X = ["10","20","30"]` |
| `string_chars/2`  | converter string ↔ lista de caracteres           | `string_chars("abc", X).` → `X = [a,b,c]`                         |

## Exemplos auxiliares

### `member/2`

Pode ser usado tanto para verificar quanto para gerar:

```prolog
?- member(2, [1,2,3]).
true.

?- member(X, [1,2,3]).
X = 1 ;
X = 2 ;
X = 3.
```

### `append/3`

Além de concatenar, pode dividir uma lista em duas partes:

```prolog
?- append(X, Y, [1,2,3]).
X = [],
Y = [1,2,3] ;

X = [1],
Y = [2,3] ;

X = [1,2],
Y = [3] ;

X = [1,2,3],
Y = [].
```

### `length/2`

Também pode **gerar uma lista de determinado tamanho**:

```prolog
?- length(X, 3).
X = [_A, _B, _C].
```

### `nth0/3` e `nth1/3`

Também podem gerar posições:

```prolog
?- nth0(N, [a,b,c], b).
N = 1.

?- nth1(N, [a,b,c], b).
N = 2.
```

### `between/3`

É particularmente interessante para gerar candidatos:

```prolog
?- between(1, 10, X), X mod 2 =:= 0.
X = 2 ;
X = 4 ;
X = 6 ;
X = 8 ;
X = 10.
```

### `maplist/...`

Pode receber um predicado definido por você:

```prolog
dobro(X, Y) :-
    Y is X * 2.

?- maplist(dobro, [1,2,3], X).
X = [2,4,6].
```

### `include/3` e `exclude/3`

Precisam de um predicado auxiliar:

```prolog
par(X) :-
    X mod 2 =:= 0.

?- include(par, [1,2,3,4,5,6], X).
X = [2,4,6].

?- exclude(par, [1,2,3,4,5,6], X).
X = [1,3,5].
```

### `sort/2` × `msort/2`

A diferença é importante em contest:

```prolog
?- sort([3,1,3,2,1], X).
X = [1,2,3].

?- msort([3,1,3,2,1], X).
X = [1,1,2,3,3].
```

### `min_list/2`, `max_list/2` e `sum_list/2`

São atalhos para operações muito comuns:

```prolog
?- min_list([8,3,10,2], X).
X = 2.

?- max_list([8,3,10,2], X).
X = 10.

?- sum_list([8,3,10,2], X).
X = 23.
```

### `string_chars/2`

Útil para problemas que trabalham caractere por caractere:

```prolog
?- string_chars("banana", X).
X = [b,a,n,a,n,a].
```

A partir daí, você pode usar `member/2`, recursão, `maplist`, etc.

## Entrada de contest

Uma combinação extremamente útil:

```prolog
read_string(user_input, "\n", "\n", _, S),
split_string(S, " ", " ", L),
maplist(number_string, [A,B,C], L).
```

Para uma entrada:

```text
10 20 30
```

obtém:

```prolog
A = 10,
B = 20,
C = 30.
```

