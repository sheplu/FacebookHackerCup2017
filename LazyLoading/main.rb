#!/usr/bin/ruby

def readFile()
	counter = 1
	begin
	    file = File.new("input", "r")
	    number = file.gets
	    while (line = file.gets)
	        addToArr(line)
	        
	    end
	    file.close
	rescue => err
	    puts "Exception: #{err}"
	    err
	end
end

def addToArr(elem)
	arr = []
	arr.push(elem)
end

def buildLine(line)
	
end

def doWork()

end

readFile()
doWork()
