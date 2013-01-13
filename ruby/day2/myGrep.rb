def myGrep(fileName, expression)
	
	file = File.open(fileName, 'r')
	lineNumber = 0
	while( line = file.gets )
		if line.include? expression	
			puts "#{lineNumber} : #{line}"
		end
		lineNumber = lineNumber + 1
	end
end

myGrep("sample.txt", 'ho')
