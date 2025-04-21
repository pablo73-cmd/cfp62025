def saludar(name="Wolf"):
    print("Hello,",name)

nombre = input("Ingrese su nombre: ")

if nombre:
    saludar(nombre)
else:
    saludar()