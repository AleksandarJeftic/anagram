require "anagram"


describe Anagram do 

    context " when filename is given" do 
      it "returns anagrams from given file" do
        expect(Anagram.new("testfile.txt").result).to eql([["asf","afs"],["ggff","FFgg"]])
      end
    end

    context " when array is given" do 
    ha=["basfa","sabaf","dff","sadsdad","gtyuija","hyuiloa","fdf"]
      it "returns angrams from given array" do
        expect(Anagram.new(ha).result).to eql([["basfa", "sabaf"],["dff","fdf"]])
      end
    end

  
end

