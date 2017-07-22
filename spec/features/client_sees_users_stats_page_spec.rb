require "rails_helper"

RSpec.describe "User visits users's stats page" do
  context "it visits as an authorized client" do
    it "sees user's stats for wines" do
      @client = create(:user, role: 2)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@client)
      #dashborad for all clients with user/wine stats
      # verify access in index based on client status
      subscriber = create(:user, username: "Allan", role: 1)
      user = build(:user)
      # change view to be able to see zipcode only or some other value
      visit "clients/:id/dashboard"
      expect(page).to have_content("Allan")
      expect(page).to have_content(user.username)
    end
  end

  context "it visit as a subscriber" do
    it "sees 404 page" do
      @subscriber = create(:user, username: "Allan", role: 1)
      user = build(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@subscriber)

      visit "clients/:id/dashboard"
      expect(page).to have_content("404")
      expect(page).to_not have_content(user.username)
    end
  end
end
