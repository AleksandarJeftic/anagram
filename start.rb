require_relative "lib/anagram"

beginning_time = Time.now

ha=Anagram.getHash
result=Anagram.getAnagrams(ha)
result.each do |item|
  item.each{|i| print i+" "}
  puts
end

end_time = Time.now

puts 
puts "Processed 338882 words."
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"