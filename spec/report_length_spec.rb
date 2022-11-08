require 'report_length'

RSpec.describe "report the length of a given string" do
    it "gives the length of a given string" do
        result = report_length("makers")
        expect(result).to eq "This string was 6 characters long"
    end

    it "gives the length of a given string" do
        result = report_length("hello")
        expect(result).to eq "This string was 5 characters long"
    end
end