time_distance = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input06.txt"))

time_list, dist_list = time_distance.split("\n")
time_list = time_list.split(": ")[1].split(" ").map(&:to_i)
dist_list= dist_list.split(": ")[1].split(" ").map(&:to_i)

wins = 1

time_list.each_with_index do | time, ind |
  disc = Math.sqrt(time**2-4*dist_list[ind])
  x1 = ((time-disc)/2+0.0001).ceil
  x2 = ((time+disc)/2-0.0001).floor
  wins *= (x2 - x1 + 1)
end
p wins
