games_list = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input02.txt"))

possible = {"red" => 12, "green" => 13, "blue" => 14}
sum = 0
for game in games_list.split("\n")
    id, hands = game.split(": ")
    id = id.split(" ")[1].to_i
    fits = true
    for hand in hands.split("; ")
        dice = hand.split(", ")
        for die in dice
            num, color = die.split(" ")
            if possible[color] < num.to_i
                fits = false
            end
        end
    end
    if fits
        sum += id
    end
end

puts sum
