def readFile()
	counter = 1
	begin
	    file = File.new("input", "r")
	    number = file.gets
	    while (line = file.gets)
	        splitLine(line)
	    end
	    file.close
	rescue => err
	    puts "Exception: #{err}"
	    err
	end
end

def splitLine(line)
	arr = line.split(' ')
	p = arr[0].to_i
	x = arr[1].to_i
	y = arr[2].to_i
	checkCircle(p, x, y)
end