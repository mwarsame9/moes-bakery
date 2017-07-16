require 'rails_helper'

describe "the user sign up path" do
  it "allows a user to sign up" do
    visit '/'
    click_on 'Signup!'
    fill_in 'Email', with: 'user@gmail.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign Up'
    expect(page).to have_content "You've successfully signed up!"
  end
end
