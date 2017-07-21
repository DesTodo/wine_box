require 'rails_helper'

RSpec.describe User, type: :model do
  it "can be created as subscriber" do
    subscriber = create(:user, role: 1)

    expect(subscriber.role).to eq("subscriber")
    expect(subscriber.subscriber?).to be_truthy
  end


  it "is created as guest by default" do
    default = create(:user)

    expect(default.role).to eq("guest")
    expect(default.guest?).to be_truthy
  end
end
