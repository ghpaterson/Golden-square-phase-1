require 'greet'

RSpec.describe "greet method" do
    it "greets the person by name" do
        result = greet("tim")
        expect(result).to eq "hello tim!"
    end
end