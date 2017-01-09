#!/usr/bin/ruby

p = 0
x = 0
y = 0

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

# (x - center_x)^2 + (y - center_y)^2 < radius^2
def checkCircle(p, x, y)
	if( (x - 50)**2 + (y - 50)**2 < 50**2 )
		puts "#{checkPercent(p, x, y)}"
	else
		puts "out"
	end
end

def checkPercent(p, x, y)
	percentArg = 3.6 * p
end

readFile()