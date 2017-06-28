#Crear un método similar al anterior, que además pueda recibir un arreglo. Si el
#arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada
#uno de los elementos.
arr = [1,2,3,4,5,6]

def parrafos(content1, content2, arr)

	html = ''
	#if arr.length > 0
	unless arr.empty?
		html = "<ol>"
		arr.each do |n|
			html += "<li>#{n}</li>"
		end
		html += "</ol>"
	end

	file = File.open('index.html','w')
	file.puts "<!DOCTYPE html>
		<html>
		<head>
		<title></title>
		</head>
		<body>
		<p>#{content1}</p>
		<p>#{content2}</p>
		#{html}
		</body>
		</html>"

	file.close

end
parrafos("hola", "chao", arr)