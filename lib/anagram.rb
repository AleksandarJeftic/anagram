class Anagram
	@result=[]
  def self.getAnagrams(h={})
  	unless @result.empty?
      @result=[]
    end
    
      h.each do |key,value|
        res=value.group_by{|elem| elem.downcase.chars.sort}.delete_if{|key,value| value.length==1}.values
        res.each do |val|
      	  @result<<val
        end
      end
    
    @result
  end
  
  def self.getHash
  	h={1 => []}
    File.open("wordlist.txt","r:iso-8859-1:utf-8").readlines.map(&:strip).each do |line|
      if h.has_key? line.length
  	    h[line.length].push(line)
      else 
  	    h[line.length]=[line]
      end
    end
    h
  end
end