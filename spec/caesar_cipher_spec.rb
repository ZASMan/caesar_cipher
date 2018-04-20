require_relative '../caesar_cipher.rb'
require 'pry'

describe 'Caesar Cipher' do
  let(:test_shift_factor) { "pizza" }
  context "encrypts the string properly" do
    it "returns 'ohyyz' with a shift factor of 25" do
      expect(CaesarCipher.new(test_shift_factor, 25).encrypt).to eq 'ohyyz'
    end

    it "returns 'uneef' with a shift factor of 5" do
      expect(CaesarCipher.new(test_shift_factor, 5).encrypt).to eq 'uneef'
    end
  end
end
