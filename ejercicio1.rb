#Crear un método que reciba dos strings, este método creará un archivo index.html y
#pondrá como párrafo cada uno de los strings recibidos.

def parrafo(content1, content2)

	file = File.open('index.html','w')
	file.puts "<!DOCTYPE html>
		<html>
		<head>
		<title></title>
		</head>
		<body>
		<p>#{content1}</p>
		<p>#{content2}</p>
		</body>
		</html>"
	file.close

end

parrafo("hola", "chao")