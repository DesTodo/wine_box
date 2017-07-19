require 'rails_helper'

RSpec.describe Wine, type: :model do
  describe "attributes" do
    it "has a name" do
      wine = build(:wine)
      expect(wine).to respond_to(:name)
    end
  end

    describe "validations" do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_uniqueness_of(:name) }
  end
end
