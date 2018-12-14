n = int(input())
valores = list()
for x in range(n):
    entrada = list(map(int, input().split()))
    if len(entrada) == n:
        valores = entrada
        break
    else:
        for i in entrada:
            valores.append(i)

valores.sort(reverse=True)

total = 0

ant = []

while len(valores) >= 3:
    ant = valores[:3]
    total = total + min(ant)
    valores = valores[3:]

print(total)
