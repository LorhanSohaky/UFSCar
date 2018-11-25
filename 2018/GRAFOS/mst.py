import numpy as np
import networkx as nx
import matplotlib.pyplot as plt

parent = dict()
rank = dict()


def make_set(v):
    parent[v] = v
    rank[v] = 0


def find(v):
    if parent[v] != v:
        parent[v] = find(parent[v])
    return parent[v]


def union(v1, v2):
    root1 = find(v1)
    root2 = find(v2)
    if root1 != root2:
        if rank[root1] > rank[root2]:
            parent[root2] = root1
        else:
            parent[root1] = root2
        if rank[root1] == rank[root2]:
            rank[root2] += 1


def kruskal(G):
    A = nx.Graph()

    for vertice in G.nodes:
        make_set(vertice)

    arestas = [(x[2], x[0], x[1]) for x in G.edges.data('weight')]
    arestas.sort()

    for aresta in arestas:
        weight, vertice1, vertice2 = aresta
        if find(vertice1) != find(vertice2):
            union(vertice1, vertice2)
            A.add_edge(vertice1, vertice2, weight=weight)

    return A


def main():
    Arestas = np.loadtxt('ha30_dist.txt')
    G = nx.from_numpy_matrix(Arestas)
    A = kruskal(G)
    
    print(A.edges)

    nx.draw(A, with_labels=True, pos=nx.random_layout(A))
    plt.savefig("grafo_mst.png")


if __name__ == '__main__':
    main()
