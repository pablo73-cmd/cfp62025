def cargar_pilotos():
    pilotos = []
    for i in range(5):
        piloto = input(f"Ingrese nombre y apellido del piloto {i + 1}: ")
        pilotos.append(piloto)
    return pilotos


lista_pilotos = cargar_pilotos()
print("\nPilotos cargados:")
for i, piloto in enumerate(lista_pilotos, 1):
    print(f"{i}. {piloto}")
