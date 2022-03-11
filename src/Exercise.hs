
meuNome = undefined    -- Coloque seu nome aqui
juramento = "Eu " ++ meuNome ++ " prometo pela minha honra que farei esta avaliação de forma individual, consultando somente o material disponibilizado pelo professor e material diretamente referenciado no mesmo."


{--
Uma fila é uma estrutura de dados em que elementos são adicionas em uma extremidade e extraídos da outra.
Por exemplo, iniciando se com uma fila vazia V, 
- a invocação "enqueue V I" retorna a fila com apenas o item I,
- a invocação "enqueue (enqueue V I) J" retorna a fila com I seguido de J,
- a invocação "peek (enqueue (enqueue V I) J" retorna o primeiro item da lista, I
- a invocação "dequeue (enqueue (enqueue V I) J)" retorna a fila apenas o item J.

Questão 1
Implemente as funções enqueue, peek e dequeue, considerando que item são Strings.

Questão 2
Reimplemente as funções, agora com nomes enqueue', peek' e dequeue', considerando que os items são de tipos quaisquer (Strings, ou Int, out Float...)

Questão 3
Uma fila com prioridade é uma fila em que a ordem é dada pela ordem de inserção e pela prioridade dos itens inseridos.
Sendo a prioridade dada por um número natural e sendo 0 a maior prioridade, considere os exemplos.
Iniciando se com uma fila vazia V, 
- a invocação "enqueue V I 3" retorna a fila com apenas o item (I,3), em que o item I tem prioridade 3
- a invocação "enqueue (enqueue V I 3) J 4" retorna a fila com (I,3) seguido de (J,4),
- a invocação "enqueue (enqueue V I 3) J 2" retorna a fila com (J,2) seguido de (I,3),
- a invocação "enqueue (enqueue V I 3) J 3" retorna a fila com (I,3) seguido de (J,3),
- as invocações de peek e dequeue funcionam como anteriormente.

Reimplemente as funções, como enqueue'', peek'' e dequeue'', para que trabalhem com prioridades.
-}



{--
Lista de compras.
Uma lista de compras possui o nome de um ítem, a quandidade a ser comprada, e uma unidade de medida.
Por exemplo

Banana 1 dúzia
Café 500 grama
Leite 3 litro
Ovos 3
Carne 1.5 kilograma
Açucar 5 kilograma

Questão 1
Defina usando tipos algébricos uma representação para os items de uma lista de compras onde o nome do ítem é uma String,
a quantidade um valor real, e a unidade é uma das seguintes constantes: 
litro, grama, dúzia, mililitro, kilograma, metro. 
Inclua também uma forma de representar a ausência de uma unidade, como no caso dos ovos na lista anterior.

Dica: use a unidade na definição do tipo.

Questão 2
Defina uma função recursiva que receba uma **lista** de items a serem comprados e gere uma lista de strings correspondente, 
**observando-se plurais**. Por exemplo, se os itens recebidos forem os da lista anterior, a resultado da função deve ser
algo como ["Banana x 1 dúzia", "Café x 500 gramas", "Leite x 3 litros", "Ovo x 3", "Carne x 1.5 kilograma"]

Obs: 
- use . como separador decimal; 
- plural só começa a partir de 2 unidades;
- documente alguns exemplos.


Questão 3
Defina uma função que receba uma grandeza e uma lista de compra como parâmetros e totalize tal grandeza.
Por exemplo, considerando a lista anterior, aqui chamada de l, e a invocacão "total kilograma l" a função retorna 6.5,
pois há 1.5 kilograma de carne e 5 kilogramas de açúcar na lista.
-}



{--
Observe a seguinte lista de palavras e como algumas delas compartilham um prefixo e outras não.

alteres, altura, bola, bolada, leite, latão, letra.

Uma árvore de prefixos (prefix tree) ou trie é uma árvore que armazena listas de palavras de forma compacta, usando nós comuns para armazenar prefixos comuns. 
(https://www.ime.usp.br/~pf/estruturas-de-dados/aulas/tries.html)
Nos vértices é guardado a continuação do prefixo que se iniciou no nó pai ao nó atual e a informação se ali termina uma palavra ou não.
O nó raiz tem prefixo vazio, isto é ""
Por exemplo,

                  ""
           /      |     \
         /        |      \
     "alt"     "bola"    "l"
    (False)    (True)     (False)
   |     \          \       \    \
 "eres"  "tura"    "da"     "e"   "atão" 
(True)   (True)   (True)  (False) (True)
                             |       |
                            "ite"  "tra"
                           (True)  (True) 

Questão 1
Defina uma tipo algébrico para representar tries, isto é, árvores em que o nó possui uma string e um booleano, e uma lista de nós filhos.

Questão 2
Use o tipo definido para representar as seguintes listas de palavras. (ignore acentos e sinais gráficos)
 - alteres, altura, bola, bolada, leite, latão, letra.
 - eco, escola, escolar, ecologo, ecológico.

Questão 3
Define uma função que, dado uma árvore de prefixos, imprima todas as palavras representadas pela árvore.
-}
