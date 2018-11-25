import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
#pip install scipy


def criar_grafo(maximo):
    vertices = range(1, maximo+1)
    arestas = [(1, 2), (1, 3), (2, 15), (3, 4), (3, 5), (4, 5), (4, 6), (5, 7), (6, 7), (6, 8), (7, 8), (7, 9),(8, 9), (8, 10), (9, 27),
           (10, 11), (10, 12), (11, 12),(11, 13), (12, 13), (12, 14), (13, 14), (13, 15), (14, 15),(14, 16), (15, 16), (15, 17), (16, 17),
           (16, 18), (17, 4), (18, 29), (19, 20), (19, 21), (20, 6), (21, 22), (21, 23), (22, 23), (22, 24),(23, 24), (23, 25), (24, 16),
           (25, 35), (26, 27), (26, 28), (27, 28), (27, 29), (28, 29), (28, 30), (29, 30), (29, 31),(30, 31), (30, 32), (31, 32),
           (31, 33), (32, 30), (33, 34), (33, 35), (34, 12), (35, 36), (36, 36)]

    grafo = nx.DiGraph()

    grafo.add_nodes_from(vertices)
    grafo.add_edges_from(arestas)

    return grafo


def criar_matriz_probabilidade(grafo,maximo):
    adjacencia = nx.adjacency_matrix(grafo,nodelist=grafo.nodes()).toarray()
    delta = np.zeros((maximo,maximo))

    for i in range(maximo):
        grau = grafo.out_degree(i+1)

        if grau == 0:
            elemento = 0
        else:
            elemento = 1/float(grau)
        delta[i][i] = elemento
    p = np.dot(delta,adjacencia)
    return p

def esponenciar_matriz(matriz, interacoes):
    b = matriz.copy()
    for i in range(0,interacoes-1):
        b = np.dot(b,matriz)

    return b


def p_barra(matriz, alfa, n):
    a = 1 - alfa
    b = alfa*1/n
    u = np.ones((n,n))

    matriz = np.dot(a,matriz)
    u = np.dot(b,u)
    matriz = matriz+u
    return matriz


def main():
    np.set_printoptions(suppress=True)
 
    maximo = 36

    w = np.zeros(maximo)
    w[0] = 1
    vezes = 100
     
    grafo = criar_grafo(maximo)
    p = criar_matriz_probabilidade(grafo,maximo)
    pk = esponenciar_matriz(p,vezes)
    wpk = np.dot(w,pk)
    print('A probabilidade de um jogador ganhar o jogo no passo', vezes, 'é de', wpk[35])
    print('Maior probabilidade p [',np.argmax(wpk),'] =', wpk[np.argmax(wpk)])

    alfa = 0.1
    barra = p_barra(p,alfa,maximo)
    barra = esponenciar_matriz(barra,vezes)
    wbarra = np.dot(w,barra)

    if(np.array_equiv(wpk, wbarra)):
        print('As distribuições estacionárias obtidas são iguais')
    else:
        print('As distribuições estacionárias obtidas são diferentes')


    nx.draw(grafo, with_labels=True,pos=nx.random_layout(grafo))
    plt.savefig("grafo_snake.png")
    plt.show()
    
main()
