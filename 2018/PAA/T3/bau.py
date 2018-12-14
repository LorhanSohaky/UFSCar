def minimo_dif(val, moedas):
    minimo = 0
    for x in moedas:
        if val - x < val - minimo:
            minimo = x

    return minimo


def main():
    entrada = input()
    n = int(entrada)

    moedas = list(map(int, input().split()))
    moedas.sort(reverse=True)

    cesto1 = moedas.pop(0)
    cesto2 = 0

    while moedas:
        if cesto1 > 0:
            cesto1 -= moedas[0]
        else:
            cesto1 += moedas[0]
        moedas.pop(0)

    print(abs(cesto1))


if __name__ == '__main__':
    main()
