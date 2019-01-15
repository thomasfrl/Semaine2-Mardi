require_relative '../lib/word_counter.rb'

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
describe "compte les mots" do
  it "dois retourer un hash avec les mots assosiés à leur nombre" do
    expect(word_counter("below", dictionary)).to eq({"below"=>1, "low"=>1})
  end
    it "dois retourer un hash avec les mots assosiés à leur nombre" do
    expect(word_counter("Howdy partner, sit down! How's it going?", dictionary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end

end
