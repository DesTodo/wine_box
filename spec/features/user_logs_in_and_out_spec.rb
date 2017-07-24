require "rails_helper"
# add scenaario as an authorized client and sees
# as an authorized user and sees
# as an unauthorized guest (not logged in)
RSpec.feature "User logs in and out" do
  scenario "with valid credentials" do
    user_attributes = {
      username: "username",
      password: "secretpassword",
      first_name: "name",
      last_name: "last",
      age: 67,
      zipcode: 80202,
    }

    user = User.create(user_attributes)

    visit login_path

    fill_in "Username", with: user.username
    fill_in "session[password]", with: user_attributes[:password]

    click_on "Login"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome, #{user.username}")
    expect(page).to have_content("Successful login")

    click_on "Logout"

    expect(current_path).to eq(root_path)
    expect(page).to_not have_content("#{user.username}")
    expect(page).to have_content("Goodbye")
  end
end
