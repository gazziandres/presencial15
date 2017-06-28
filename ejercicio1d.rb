#El retorno de los métodos debe devolver nil.

arr = [1,2,3,4,5,6]

def parrafos(content1, content2, arr, color1, color2)

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
		<style>
			p:first-child {
				background-color:#{color1}
			}
			p:nth-child(even) {
				background-color:#{color2}
			}
		</style>
		</head>
		<body>
		<p>#{content1}</p>
		<p>#{content2}</p>
		#{html}
		</body>
		</html>"

	file.close

end

parrafos("hola", "chao", arr, "green", "blue")