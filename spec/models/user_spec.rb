require 'rails_helper'

RSpec.describe User, type: :model do
  it "can be created as subscriber" do
    subscriber = create(:user, role: 1)

    expect(subscriber.role).to eq("subscriber")
    expect(subscriber.subscriber?).to be_truthy
  end


  it "is created as subscriber by default" do
    default = create(:user)

    expect(default.role).to eq("subscriber")
    expect(default.subscriber?).to be_truthy
  end
end
