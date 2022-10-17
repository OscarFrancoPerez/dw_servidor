import time
from factorial import func_factorial
from factorial2 import func_factorial2

# Inicio de variables
numero = input("Introduce un número para saber su factorial: ")
print("Escoge una forma de calculo:")
print()
print("a) Recursión")
print("b) Sin Recursión")
option = input()
print()

if option == 'a':
	start_time = time.time()
	# Resultado
	print("El factorial es : ")
	print(func_factorial(int(numero)))
	end_time = time.time()
	elapsed_time = end_time - start_time
	print()
	print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
if option == 'b':
	start_time = time.time()
	# Resultado
	print("El factorial es : ")
	print(func_factorial2(int(numero)))
	end_time = time.time()
	elapsed_time = end_time - start_time
	print()
	print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')

