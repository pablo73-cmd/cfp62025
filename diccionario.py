
persona = {
    "nombre": "Juan",
    "edad": 30,
    "ciudad": "Buenos Aires"
}


print(persona["nombre"])  


persona["profesion"] = "Programador"


for clave, valor in persona.items():
    print(f"{clave}: {valor}")
