# factorial2.py

# Función no recursiva
def func_factorial2(numero):
    factorial = 1

    if int(numero) >= 1:
        for i in range(1, int(numero)+1):
            factorial = factorial * i
    return factorial
