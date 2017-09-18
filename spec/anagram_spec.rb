require "anagram"

describe Anagram do 
  describe "getAnagrams" do
    
    context " when hash is given" do 
    h={3 => ["bas","sab","dff"], 1=>["a","A","g"]}
      it "returns anagrams of given hash" do
        expect(Anagram.new("fileName").getAnagrams(h)).to eql([["bas", "sab"],["a","A"]])
      end
    end

    context " when other hash is given" do 
    ha={5 => ["basfa","sabaf","dff"], 2=>["ba","Ab","da"]}
      it "returns different anagrams" do
        expect(Anagram.new("fileName").getAnagrams(ha)).to eql([["basfa", "sabaf"], ["ba","Ab"]])
      end
    end

  end
end

