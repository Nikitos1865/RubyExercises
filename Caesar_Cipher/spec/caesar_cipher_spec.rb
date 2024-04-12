require "./lib/caesar_cipher"

describe "works" do 
    it "returns a ciphered message based on the string and int entered" do
        expect(caesar_cipher("my mother is a good person", 5)).to eql("rd rtymjw nx f ltti ujwxts")
    end 
    it "returns case sensitive message" do
        expect(caesar_cipher("My Mother is a gOOd person", 5)).to eql("Rd Rtymjw nx f lTTi ujwxts")
    end 
    it "returns case sensitive message with negative int" do
        expect(caesar_cipher("Rd Rtymjw nx f lTTi ujwxts", -5)).to eql("My Mother is a gOOd person")
    end 
    it "returns ciphered message with numbers in the string" do 
        expect(caesar_cipher("My Mot3her is a Go3od 5 Person",5)).to eql("Rd Rty3mjw nx f Lt3ti 5 Ujwxts")
    end 
end 