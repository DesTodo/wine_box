require "rails_helper"

RSpec.describe "user searches wine" do
  context "it finds a match" do
    it "can see wine description" do
      @user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)

      wine_a = create(:wine, name: "Californian")
      wine_b = create(:wine, name: "French")
      wine_c = create(:wine, name: "Argentinian")

      visit user_path(@user)

      #fill_in(wine.name), with: "French"
      click_button("Search")

      expect(current_path).to eq(wine_path(wine_b))
      expect(page).to have_content("French")
      expect(page).to have_content("description")



    #   it "can tag wine" do
    #
    # context "it doesn't find a match" do
    #   it "is redirected back to search page" do
    #
    #
    #   end
    # end
    #   end
    end
  end
end
