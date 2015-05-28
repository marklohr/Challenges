require 'csv'

array_of_arrays = CSV.read("People.csv")

aged_lines = array_of_arrays.select{|line_array| line_array[1].to_i >= 62}

File.open('export2.txt', 'w') { |f| aged_lines.each {|line| f.puts "#{line[0]} is #{line[1]}"} }