require_relative '../lib/caesar_cipher.rb'
describe "code le texte" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(caesar_cipher("abc",1)).to eq("bcd")
    expect(caesar_cipher("abc",5)).to eq("fgh")
    expect(caesar_cipher("abc",0)).to eq("abc")
  end

  it "code le texte même avec des caractères spéciaux et des majuscules" do
    expect(caesar_cipher("ab C!",1)).to eq("bc D!")
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("éà R !ù ioP",2)).to eq("éà T !ù kqR")
  end

    it "ça previens si la clef est mauvaise" do
    expect(caesar_cipher("ab C!",-1)).to eq("La clef est mauvaise")
    expect(caesar_cipher("What a string!",1.36)).to eq("La clef est mauvaise")
    expect(caesar_cipher("éà R !ù ioP","th")).to eq("La clef est mauvaise")
  end

end