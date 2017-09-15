h={1 => []}
File.open("wordlist.txt","r:iso-8859-1:utf-8").readlines.map(&:strip).each do |line|
  if h.has_key? line.length
  	h[line.length].push(line)
  else 
  	h[line.length]=[line]
  end
end

h.each do |key,value|
  result=value.group_by {|elem| elem.downcase.chars.sort}.delete_if{|key,value| value.length==1}.values
    result.each do |item|
      item.each{|it| print it + " "}
      puts 
    end
end