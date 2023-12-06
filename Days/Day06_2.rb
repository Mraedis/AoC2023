time_distance = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input06.txt"))

time, dist = time_distance.split("\n")
time = time.split(": ")[1].split(" ").join().to_i
dist = dist.split(": ")[1].split(" ").join().to_i

disc = Math.sqrt(time**2-4*dist)
x1 = ((time-disc)/2+0.0001).ceil
x2 = ((time+disc)/2-0.0001).floor
wins = (x2 - x1 + 1)
p wins
