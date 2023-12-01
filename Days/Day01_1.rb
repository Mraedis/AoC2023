calibrationFile = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input01.txt"))
calibrations = calibrationFile.split(/\n/)

sum = 0
for cal in calibrations
    cnum = cal.gsub(/\p{^Number}/, '')
    cnum = cnum[0]+cnum[-1]
    sum +=  cnum.to_i
end

puts sum
