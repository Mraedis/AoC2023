require 'set'

card_list = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input04.txt"))

cards = card_list.split("\n")
numcards = Array.new(cards.length, 1)

cards.each_with_index do | card, i |
    left, right = card.split(": ")[1].split(" | ")
    left = left.split(" ").map(&:to_i)
    right = right.split(" ").map(&:to_i)
    for j in 1..(left & right).length do
        numcards[i+j] += numcards[i]
    end
end

p numcards.sum
