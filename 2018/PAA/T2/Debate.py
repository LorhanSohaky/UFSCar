def main():
    entrada = input()
    qtd_vertices = int(entrada)
    
    estudantes = list(range(qtd_vertices))
    vertices = dict()

    for i in range(len(estudantes)):
        entrada = input()
        entrada = list(map(int, entrada.split()))
        entrada = entrada[1:]
        
        vertices[i] = {'color':'null','vizinhos':entrada}

    vertices[0]['color'] = 'branco'
    fila = [0]

    while len(fila) > 0:
        atual = fila.pop(0)

        for vizinho in vertices[atual]['vizinhos']:
            if vertices[vizinho]['color'] == 'null':
                if vertices[atual]['color'] == 'branco':
                    vertices[vizinho]['color'] = 'preto'
                else:
                    vertices[vizinho]['color'] = 'branco'

                fila.append(vizinho)
            elif vertices[atual]['color'] == vertices[vizinho]['color'] and atual != vizinho:
                print('Impossivel')
                return

    print('Vai la, tio Willian!')


if __name__ == '__main__':
    main()
