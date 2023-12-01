calibrationFile = File.read(File.join(File.dirname(__FILE__),  "../Inputs/Input01.txt"))
num_hash = {
  zero: 'z0o', one: 'o1e', two: 't2o', three: 't3e', four: 'f4r',
  five: 'f5e', six: 's6x', seven: 's7n', eight: 'e8t', nine: 'n9e'
}

for num in num_hash.keys
    calibrationFile = calibrationFile.gsub(num.to_s, num_hash[num])
end

calibrations = calibrationFile.split(/\n/)

sum = 0
for cal in calibrations
    cnum = cal.gsub(/\p{^Number}/, '')
    cnum = cnum[0] + cnum[-1]
    sum +=  cnum.to_i
end

puts sum
