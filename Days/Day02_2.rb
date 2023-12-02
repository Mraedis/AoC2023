games_list = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input02.txt"))

pow = 0
for game in games_list.split("\n")
    id, hands = game.split(": ")
    id = id.split(" ")[1].to_i
    max = [0,0,0,0,0,0]
    fits = true
    for hand in hands.split("; ")
        dice = hand.split(", ")
        for die in dice
            num, color = die.split(" ")
            if max[color.length] < num.to_i
              max[color.length] = num.to_i
            end
        end
    end
    pow += max[3]*max[4]*max[5]
end

puts pow
