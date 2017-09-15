require "anagram"

describe Anagram do 
  describe ".getAnagrams" do

  	context " when hash is given" do 
  	h={3 => ["bas","sab","dff"]}
  	  it "returns anagrams of given hash" do
  	  	expect(Anagram.getAnagrams(h)).to eql([[["bas", "sab"]]])
  	  end
  	end
  end
end

