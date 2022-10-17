#factorial.py

#Funcion recursiva 
def func_factorial(numero):
	factorial = 1
	#Salida del bucle
	if numero == 1: return numero
	#Input invalido
	elif numero < 1: return ("NA")
	#Continuación hasta volver entrar en el if
	else: return numero*func_factorial(numero-1)

