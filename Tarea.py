historial3=(9530, 4120, 4580, 1500, 890, 7516, 426)
promedio = sum(historial3)/len(historial3)

if promedio >= 4500: 
    print("El promedio de los gastos es: " + str(promedio) + " y se ha excedido el gasto promedio para su mascota")
else:
    print("El promedio de los gastos es: " + str(promedio))