#!/usr/bin/ruby

def readFile()
	counter = 0
	i = 0
	diceLaunch = []
	begin
	    file = File.new("input", "r")
	    number = file.gets
	    while (line = file.gets)
	    	if counter == 0
	    		line = line.split(' ')
	    		diceLaunch.push(line[0])
	    		counter = counter + 1
	    	else
	    		diceLaunch.push(line)
	    		counter = 0
	    	end
	    	i = i + 1
	    end
	    
	    checkDices(diceLaunch)
	    file.close
	rescue => err
	    puts "Exception: #{err}"
	    err
	end
end

def checkDices(dl)
	diceLaunch = dl
	j = 0
	for i in diceLaunch
		if j % 2 == 0
			checkDice(diceLaunch[j], diceLaunch[j+1])
		end
		j = j + 1
	end
end

def checkDice(kill, damage)
	#puts "#{kill} #{damage}"
	#puts "-----"
	percentKill = 0
	damage = damage.split(' ')
	for i in damage
		checkKill(kill, i)
	end
end

def checkKill(hp, dice)
	arr = cutDice(dice)
	probaKill(hp, arr)
end

def cutDice(dice)
	arr = []
	dice = dice.split('d')
	arr.push(dice[0])
	dice.shift()
	if dice[0].include? "+"
		dice = dice[0].split("+")
		arr.push(dice[0])
		arr.push("+")
		arr.push(dice[1])
	elsif dice[0].include? "-"
		dice = dice[0].split("-")
		arr.push(dice[0])
		arr.push("-")
		arr.push(dice[1])
	else 
		arr.push(dice[0])
	end	
	return arr
end

def probaKill(hp, dice)
	hp = hp.to_i
	if dice.length > 2
		if dice[2] == "+"
			hp = hp - dice[3].to_i
		else
			hp = hp + dice[3].to_i
		end
	end
	puts "#{hp} - #{dice}"

end

readFile()