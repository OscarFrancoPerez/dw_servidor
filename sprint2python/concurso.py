from math import trunc
from random import uniform


print("Bienvenido al concurso")
puntuacion=0

ans1 = False
ans2 = False
ans3 = False


salida = False

while (salida == False):
	azar = trunc(uniform(0, 3))
	if(azar == 0 and ans1 == False):
		print("¿Quién saboteo el Nord Stream?")
		print("")
		print("a) Rusia")
		print("b) Bolivia")
		print("c) EEUU")
		print("")
		solucion = input("Introduzca su respuesta: ")

		if (solucion == "c"):
			print("Correcto")
			puntuacion += 10
		else:
			print("Fallaste")
			puntuacion = puntuacion - 5
		ans1 = True	
	elif(azar == 1 and ans2 == False):
		print("¿Que pasó en Las Mavinas?")
		print("")
		print("a) Partido de futbol Argentina-Inglaterra")
		print("b) Imperialismo Británico en su máximo esplandor")
		print("c) Argentina regala Las Malvinas para caerle mejor a los Ingleses")
		print("")
		solucion = input("Introduzca su respuesta: ")

		if (solucion == "b"):
			print("Correcto")
			puntuacion += 10
		else:
			print("Fallaste")
			puntuacion = puntuacion - 5
		ans2 = True
	elif(azar == 2 and ans3 == False):		
		print("¿Quien entró primero en Berlin?")
		print("")
		print("a) La URSS")
		print("b) EEUU")
		print("c) Francia")
		print("")
		solucion = input("Introduzca su respuesta: ")

		if (solucion == "a"):
			print("Correcto")
			puntuacion += 10
		else:
			print("Fallaste")
			puntuacion = puntuacion - 5
		ans3 = True

	if(ans1 == True and ans2 == True):
		salida = True	
	elif(ans2 == True and ans3 == True):
		salida = True
	elif (ans1 == True and ans3 == True):
		salida = True

print("Nota final: "+ str(puntuacion))
