require 'csv'
names = {}
CSV.foreach("People.csv") do |row|
  if row[1].to_i > 62
    names[row[0]] = row[1]
  end
end
names.each {|key, value| puts "#{key} is #{value}"}
File.open('export.txt', 'w') { |f| names.each {|key, value| f.puts "#{key} is #{value}"} }



