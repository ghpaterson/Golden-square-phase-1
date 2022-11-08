require 'present'

RSpec.describe Present do
    it "wraps and unwraps presents" do
        present = Present.new
        present.wrap(5)
        expect(present.unwrap).to eq 5
    end

    it "fails if unwrapping already unwrapped present" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "fails if wrapping already wrapped present" do
        present = Present.new
        present.wrap(6)
        expect { present.wrap(5) }.to raise_error "A contents has already been wrapped."
        expect(present.unwrap).to eq 6
    end
end