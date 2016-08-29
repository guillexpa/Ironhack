require_relative 'Lexiconomitron'



describe Lexiconomitron do

  before :each do
    @lexi = Lexiconomitron.new
  end
  
  describe "#eat_t" do
    it "removes every letter t from the input" do
      # @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#shazam" do
    it "reverses every word of the input array" do
      # @lexi = Lexiconomitron.new
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sihT","tset"])
    end
  end

  describe "#oompa_loompa" do
    it "selects every word of an array that has 3 or less letters and sorts by their length" do
      # @lexi = Lexiconomitron.new
      expect(@lexi.oompa_loompa(["Hello","I","am","Guille"])).to eq(["am","I"])
    end
  end




end
