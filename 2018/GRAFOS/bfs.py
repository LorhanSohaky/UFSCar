import networkx as nx
import matplotlib.pyplot as plt


def bfs(G, s):
    A = nx.Graph()
    distancias = dict()

    fila = []

    for v in G.nodes:
        G.nodes[v]['color'] = 'white'
        G.nodes[v]['parent'] = None
        distancias[v] = float('inf')

    G.nodes[s]['color'] = 'gray'
    distancias[s] = 0

    fila.append(s)

    while fila:
        u = fila.pop(0)

        for v in G.neighbors(u):
            if G.nodes[v]['color'] == 'white':
                distancias[v] = distancias[u]+1
                G.nodes[v]['parent'] = u

                G.nodes[v]['color'] = 'gray'
                fila.append(v)
        if not G.nodes[u]['parent'] is None:
            A.add_edge(u, G.nodes[u]['parent'])

    return A


def main():
    G = nx.read_pajek('karate.paj')
    A = bfs(G, '1')

    print(A.edges)

    nx.draw(A, with_labels=True, pos=nx.random_layout(A))
    plt.savefig("grafo_bfs.png")


if __name__ == '__main__':
    main()
