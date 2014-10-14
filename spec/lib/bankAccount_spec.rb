require "spec_helper"
require "BankAccount"

describe Largest do
  describe "#find_largest" do
    it "finds the largest number in the array" do
      largest_number = Largest.find_largest([1,4,2])
      expect(largest_number).to eq(4)
    end
    it "finds the largest number in another array" do
      largest_number = Largest.find_largest([-1,-3,3])
      expect(largest_number).to eq(3)
    end
  end
end