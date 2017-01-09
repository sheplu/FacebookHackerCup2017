#!/usr/bin/ruby

def readFile()
	counter = 1
	begin
	    file = File.new("input", "r")
	    number = file.gets
	    while (line = file.gets)
	    	puts line
	        splitLine(line)
	    end
	    file.close
	rescue => err
	    puts "Exception: #{err}"
	    err
	end
end

def splitLine(line)
	arrLine = line.split(' ')
	puts arrLine
end

def splitDice(dice)
	
end