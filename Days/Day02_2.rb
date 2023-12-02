games_list = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input02.txt"))

pow = 0
for game in games_list.split("\n")
    id, hands = game.split(": ")
    id = id.split(" ")[1].to_i
    max = {"red" => 0, "green" => 0, "blue" => 0}
    fits = true
    for hand in hands.split("; ")
        dice = hand.split(", ")
        for die in dice
            num, color = die.split(" ")
            if max[color] < num.to_i
              max[color] = num.to_i
            end
        end
    end
    pow += max["red"]*max["blue"]*max["green"]
end

puts pow
