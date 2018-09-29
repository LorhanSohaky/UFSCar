def organizar(vetor):
    quantidade_trocas = 0
    i = 1
    
    while i < len(vetor):
        
        while vetor[i] != i:
            quantidade_trocas += 1
            tmp = vetor[i]
            vetor[i] = vetor[tmp]
            vetor[tmp] = tmp

        i += 1


    return quantidade_trocas


jogadores = ['Finn','Jake']
while True:
    entrada = raw_input().split()
    entrada = [int(x) for x in entrada]

    n = entrada[0]

    if n == 0:
        break

    quantidade_trocas = organizar(entrada)
    

    print(jogadores[quantidade_trocas%2])
