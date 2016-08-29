require_relative 'exerciseDay1'

RSpec.describe "My Calc test" do
  it "returns zero when input is empty string" do
      expect(StringCalculator.new.add("")).to eq(0)
  end

  it "returns one when input is number one string" do
      expect(StringCalculator.new.add("1")).to eq(1)
  end

  it 'returns three when input is 1\n2' do
      expect(StringCalculator.new.add("1\n2")).to eq(3)
  end

end
