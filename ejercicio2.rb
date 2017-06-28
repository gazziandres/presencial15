#Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.

def contarlineas
file = File.open('peliculas.txt', 'r')
puts file.read.split("\n").length
file.close
end

contarlineas
