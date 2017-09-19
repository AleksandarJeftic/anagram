require "anagram"

describe Anagram do 

    context " when filename is given" do 
      it "returns anagrams of given hash" do
        expect(Anagram.new("testfile.txt").result).to eql([["asf","afs"],["ggff","FFgg"]])
      end
    end

    context " when other hash is given" do 
    ha=["basfa","sabaf","dff"]
      it "returns different anagrams" do
        expect(Anagram.new(ha).result).to eql([["basfa", "sabaf"]])
      end
    end

  
end

