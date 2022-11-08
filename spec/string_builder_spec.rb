require 'string_builder'

RSpec.describe StringBuilder do
    it "returns hello" do
        my_string = StringBuilder.new
        my_string.add("hello")
        my_string_size = my_string.size
        expect(my_string_size).to eq 5
    end

    it "returns the string input by the user" do
        my_string = StringBuilder.new
        my_string.add("bye")
        expect(my_string.output).to eq "bye"
    end
end