print("Welcome to Geopoltik Today: El concurso donde cualquier respuesta podría ser cierta hasta que se sepa que pasó.")
puntuacion=0
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

print("Nota final: "+ str(puntuacion))
