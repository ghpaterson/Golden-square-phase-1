require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "check user has given wrong codeword" do
        result = check_codeword("yellow")
        expect(result).to eq "WRONG!"
    end

    it "checks if user has close codeword" do
        result = check_codeword("hope")
        expect(result).to eq "Close, but nope."
    end

    it "checks if user has entered correct codeword" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
end