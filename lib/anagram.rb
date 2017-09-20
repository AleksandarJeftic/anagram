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
      res=input.delete_if{|key,value| value.length==1}
      res.each do |key,val|
          @result<<val
      end
    else
      res=input.group_by{|elem| elem.downcase.chars.sort}.delete_if{|key,value| value.length==1}.values
      res.each{|val| @result<<val}
    end
  end
  
  def getHash(filename)
    if File.exist?(filename)
      path=filename
    else
      path="./spec/support/"+filename
    end
    h={}
    File.open(path,"r:iso-8859-1:utf-8").readlines.map(&:strip).each do |line|
      if h.has_key? line.downcase.chars.sort
        h[line.downcase.chars.sort].push(line)
      else 
        h[line.downcase.chars.sort]=[line]
      end
    end
    h
  end
end