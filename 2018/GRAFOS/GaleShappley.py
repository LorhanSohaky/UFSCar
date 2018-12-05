import networkx as nx
from networkx.algorithms import bipartite
import matplotlib . pyplot as plt


def preferencia(mulheres, w, mLinha, m):
    return mulheres[w].index(m) < mulheres[w].index(mLinha)


def GaleShappley(homens, mulheres):
    edges = dict()
    homens_restantes = list(homens)

    while homens_restantes:
        m = homens_restantes.pop(0)
        for w in homens[m]:
            if not w in edges:
                edges[w] = m
                break
            else:
                if preferencia(mulheres, w, edges[w], m):
                    homens_restantes.append(edges[w])
                    edges[w] = m
                    break

    return edges


def main():
    homens = dict()
    arquivoMen = open('men.txt', 'r')
    for linha in arquivoMen:
        h = linha.split(sep=':')[0]
        m = linha.split(sep=':')[1:][0]
        m = m.split(sep=',')
        for i in range(len(m)):
            m[i] = m[i].replace('\n', '').replace(',', '').strip()

        homens[h] = dict((k, 0) for k in m)

    arquivoMen.close()

    mulheres = dict()
    arquivoWomen = open('women.txt', 'r')
    for linha in arquivoWomen:
        m = linha.split(sep=':')[0]
        h = linha.split(sep=':')[1:][0]
        h = h.split(sep=',')
        for i in range(len(h)):
            h[i] = h[i].replace('\n', '').replace(',', '').strip()

        mulheres[m] = h

    arquivoWomen.close()

    edges = GaleShappley(homens, mulheres)

    print(edges)

    G = nx.Graph()
    node_color_map = list()

    for homem in homens:
        for mulher in homens[homem]:
            G.add_node(homem, bipartite=0, color='blue')
            G.add_node(mulher, bipartite=1, color='red')
            G.add_edge(homem, mulher, color='black')

    for edge in edges:
        G.nodes[edge]['color'] = 'red'
        G.nodes[edges[edge]]['color'] = 'blue'
        G.add_edge(edge, edges[edge], color='red')

    edges_color = [G[u][v]['color'] for u, v in G.edges()]

    node_color_map = [u[1]['color']for u in G.nodes(data=True)]

    X, Y = bipartite.sets(G)
    pos = dict()
    pos.update((n, (1, i)) for i, n in enumerate(X))  # put nodes from X at x=1
    pos.update((n, (2, i)) for i, n in enumerate(Y))  # put nodes from Y at x=2

    nx.draw(G, with_labels=True, node_color=node_color_map,
            edge_color=edges_color, pos=pos)
    plt.savefig('grafo_gale.png')


if __name__ == '__main__':
    main()
