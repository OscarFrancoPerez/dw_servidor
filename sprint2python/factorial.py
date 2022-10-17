#factorial.py

#Inicio de variables
numero = input("Introduce un número para saber su factorial: ")
factorial = 1

#Funcion recursiva 
def func_factorial(numero):
	#Salida del bucle
	if numero == 1: return numero
	#Input invalido
	elif numero < 1: return ("NA")
	#Continuación hasta volver entrar en el if
	else: return numero*func_factorial(numero-1)

#Resultado
print("El factorial es : ")
print(func_factorial(int(numero)))
