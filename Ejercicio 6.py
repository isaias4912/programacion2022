Historial2 = (23500, 5960, 2300, 10200, 8900)


for i in [Historial2]:
   suma = Historial2[0] + Historial2[1] +     Historial2[2] + Historial2[3] + Historial2[4]   
print (suma)


def superiores():
    mayor=5000
    contador=0
    suma=0
    for i in [Historial2]:
        if mayor < Historial2[0]:
            contador = contador+1
            suma = suma + Historial2[0]
        if mayor < Historial2[1]:
            contador = contador+1
            suma = suma + Historial2[1]
        if mayor < Historial2[2]:
            contador = contador+1
            suma = suma + Historial2[2]
        if mayor < Historial2[3]:
            contador = contador+1
            suma = suma + Historial2[3]
        if mayor < Historial2[4]:
            contador = contador+1
            suma = suma + Historial2[4]
        print (contador)
        print (suma)
superiores() 