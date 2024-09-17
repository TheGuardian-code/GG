	
def file_to_byte_array(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        text = file.read()
    byte_array = bytearray(text, 'utf-8')
    print(f"Size => {len(byte_array)}")
    return byte_array

def save_byte_array_as_text(byte_array, output_file_path):
    # Convertir cada byte en su representación numérica y unirlos en una cadena separada por espacios
    byte_string = ','.join(map(str, byte_array))
    result="".join(['{', byte_string, '}'])
    with open(output_file_path, 'w', encoding='utf-8') as file:
        file.write(result)
        print(f"Size => {len(result)}")

# Ruta del archivo de texto de entrada
input_file_path = 'Mi_Bitel-minify.lua'

# Ruta del archivo de texto de salida
output_file_path = 'sbin'

# Convertir el contenido del archivo a un array de bytes
print(f"⏳ Loading File : {input_file_path}")
byte_array = file_to_byte_array(input_file_path)

# Guardar el array de bytes como texto en otro archivo
print(f"⌛ Write File : {output_file_path}")
save_byte_array_as_text(byte_array, output_file_path)

print("🟢 SUCESS")

# exites