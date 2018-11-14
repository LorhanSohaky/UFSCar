def dijkstra(vertices, arestas, inicial, final):
    visitados = set()
    parente = dict()
    nao_visitados = set({inicial})
    distancias = {inicial:0}

    while len(nao_visitados) > 0:
        atual = min([(distancias[no],no) for no in nao_visitados])[1]

        if atual == final:  # já achou o menor caminho até o final
            break

        visitados.add(atual)
        nao_visitados.remove(atual)

        atual_arestas = arestas[atual]

        vizinhos = []
        for x in range(len(atual_arestas)):
            if not atual_arestas[x][0] in visitados:
                vizinhos.append(atual_arestas[x])
        for vizinho in vizinhos:
            distancia = distancias[atual] + vizinho[1]
        
            if distancia < distancias.get(vizinho[0], float('inf')):
                distancias[vizinho[0]] = distancia
                parente[vizinho[0]] = atual
                nao_visitados.add(vizinho[0])

    return distancias[final]


def main():
    entrada = input()
    (qtd_vertices,qtd_arestas) = map(int,entrada.split())

    vertices = list(range(qtd_vertices))
    arestas = {}

    for i in range(qtd_arestas):
        entrada = input()
        (origem,destino,peso) = map(int, entrada.split())

        if origem in arestas:
            arestas[origem].append((destino,peso))
        else:
            arestas[origem] = [(destino,peso)]


    resultado = dijkstra(vertices,arestas,0,len(vertices)-1)
    print(resultado)

if __name__ == '__main__':
    main()
