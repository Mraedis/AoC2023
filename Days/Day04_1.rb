require 'set'

card_list = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input04.txt"))

cards = card_list.split("\n")
winnings = 0
for card in cards do
    left, right = card.split(": ")[1].split(" | ")
    left = left.split(" ").map(&:to_i)
    right = right.split(" ").map(&:to_i)
    winnums = (left & right).length
    if (winnums > 0)
        winnings += 2 ** (winnums - 1)
    end
end

puts winnings
