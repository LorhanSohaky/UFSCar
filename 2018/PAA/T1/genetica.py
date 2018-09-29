def dividirEConquistar(a,b):
    if a == b:
        return True

    a1 = a[:len(a)/2]
    a2 = a[len(a)/2:]

    b1 = b[:len(b)/2]
    b2 = b[len(b)/2:]

    r11 = a1 == b1
    r12 = a1 == b2 

    r21 = a2 == b1 
    r22 = a2 == b2 

    return  (r11 and r22) or (r12 and r21)
   

def main():
    while True:
        entrada = raw_input().split()
        n = int(entrada[0])

        if n == 0:
            break

        strings = entrada[1:len(entrada)]

        iguais = dividirEConquistar(strings[0], strings[1])

        if iguais:
            print('SIM')
        else:
            print('NAO')


if __name__ == '__main__':
    main()
