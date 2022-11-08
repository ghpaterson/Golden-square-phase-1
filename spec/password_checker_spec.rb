require 'password_checker'

RSpec.describe PasswordChecker do
    it "Gives true if password is equal or great than 8 characters" do
        password = PasswordChecker.new
        expect(password.check("123456789")).to eq true
    end

    it "fails if password less than 8 characters" do
        password = PasswordChecker.new
        expect { password.check("1234")}.to raise_error "Invalid password, must be 8+ characters."
    end
end