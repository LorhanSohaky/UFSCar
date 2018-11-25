import networkx as nx
import matplotlib.pyplot as plt

time = 0


def dfs(G, s):
    A = nx.Graph()

    for v in G.nodes:
        G.nodes[v]['color'] = 'white'
        G.nodes[v]['parent'] = None

    global time
    time = 0
    dfs_visit(G, s, A)
    return A


def dfs_visit(G, u, A):
    global time
    time = time+1
    G.nodes[u]['discovery'] = time
    G.nodes[u]['color'] = 'gray'

    for v in G.neighbors(u):
        if G.nodes[v]['color'] == 'white':
            G.nodes[v]['parent'] = u
            dfs_visit(G, v, A)

    G.nodes[u]['color'] = 'black'
    time = time + 1
    G.nodes[u]['finishing'] = time
    if not G.nodes[u]['parent'] is None:
        A.add_edge(u, G.nodes[u]['parent'])


def main():
    G = nx.read_pajek('dolphins.paj')
    A = dfs(G, '1')

    print(A.edges)

    nx.draw(A, with_labels=True, pos=nx.random_layout(A))
    plt.savefig("grafo_dfs.png")


if __name__ == '__main__':
    main()
