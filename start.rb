require_relative "lib/anagram"

beginning_time = Time.now
filename="wordlist.txt"
testarray=["gfd","gdf","Gdd","ddg"]
anagramFinder=Anagram.new(filename)

anagramFinder.result.each do |item|
  item.each{|i| print i+" "}
  puts
end
end_time = Time.now

puts 
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"