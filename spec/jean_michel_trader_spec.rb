require_relative '../lib/jean_michel_trader.rb'
describe "maximalise les gains" do
  it "dois renvoyer le jour d'achat et le jour de vente" do
    expect(day_trader([2, 3, 6, 9, 15, 8, 6, 1, 10]).to eq([1,4])
  end
  it "dois renvoyer le jour d'achat et le jour de vente (pas vendre avant d'acheter)" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10]).to eq([1,4])
  end
end
