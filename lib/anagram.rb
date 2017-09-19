class Anagram

  attr_accessor :result

  def initialize(option)
    if option.is_a?(String)
      sortedhash=getHash(option)
      getAnagrams(sortedhash)
    else 
      getAnagrams(option)
    end
  end

  def getAnagrams(input)
    @result=[]
    if input.is_a?(Hash)
      input.each do |key,value|
        res=value.group_by{|elem| elem.downcase.chars.sort}.delete_if{|key,value| value.length==1}.values
        res.each do |val|
          @result<<val
        end
      end
    else
      res=input.group_by{|elem| elem.downcase.chars.sort}.delete_if{|key,value| value.length==1}.values
      res.each{|val| @result<<val}
    end
  end
  
  def getHash(filename)
    h={1 => []}
    File.open(filename,"r:iso-8859-1:utf-8").readlines.map(&:strip).each do |line|
      if h.has_key? line.length
        h[line.length].push(line)
      else 
        h[line.length]=[line]
      end
    end
    h
  end
end