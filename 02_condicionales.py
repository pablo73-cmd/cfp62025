n = int(input("Escribe un número: "))
if n % 2 == 0:
    print("Es par")
else:
    print("Es impar")

edad = int(input("Edad: "))
if edad < 18:
    print("Menor de edad")
elif edad < 60:
    print("Adulto")
else:
    print("Adulto mayor")

palabra = input("Palabra: ")
if palabra == palabra[::-1]:
    print("Es un palíndromo")
else:
    print("No lo es")

