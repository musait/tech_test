require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
         described_class.new(name: "AAA")
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a name with number in it" do
      subject.name = "12A"
      expect(subject).to_not be_valid
    end

    it "is not valid without a name with more than 3 characters" do
      subject.name = "AAAA"
      expect(subject).to_not be_valid
    end
  end
end
