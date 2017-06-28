#Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. 
#El método debe devolver este valor.
def sumar 
	file = File.open('peliculas.txt', 'r')
	data = file.readlines
	arr = data.to_s.split(' ')
	arr.size
end


puts sumar

=begin
Crear un método similar para que además reciba -como argumento- un string. 
En este caso el método debe contar únicamente las apariciones de ese string en el archivo.
=end

def argumento (string, 'peliculas.txt')
	file = File.open('peliculas.txt', 'r')
	data = file.readlines
	file.close

puts lines.scan(string).count
end

argumento('Guerra', 'peliculas.txt')

