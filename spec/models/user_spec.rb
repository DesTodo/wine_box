require 'rails_helper'

RSpec.describe User, type: :model do
  describe "users can have different roles" do
    it "can be created as client" do
      client = create(:user, role: 2)

      expect(client.role).to eq("client")
      expect(client.client?).to be_truthy
    end


    it "user is created with role subscriber by default" do
      default = create(:user)

      expect(default.role).to eq("subscriber")
      expect(default.subscriber?).to be_truthy
    end
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_uniqueness_of(:username) }
  end
end
