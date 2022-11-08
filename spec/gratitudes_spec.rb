require 'gratitudes'

RSpec.describe Gratitudes do
    it "returns the gratitude input by user" do
        gratitudes = Gratitudes.new
        gratitudes.add("makers")
        expect(gratitudes.format).to eq "Be grateful for: makers"
    end

    it "returns multiple input by user" do
        gratitudes = Gratitudes.new
        gratitudes.add("makers")
        gratitudes.add("peers")
        gratitudes.add("yoga")
        expect(gratitudes.format).to eq "Be grateful for: makers, peers, yoga"
    end

    it "returns the gratitude input by user" do
        gratitudes = Gratitudes.new
        expect(gratitudes.format).to eq "Be grateful for: "
    end
end