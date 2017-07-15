require 'rails_helper'

describe "the make a user an admin process" do
  it "makes a newly created user an admin" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit products_path
    save_and_open_page
    click_link 'Signup'
    fill_in 'Email', :with => 'mwarsame@gmail.com'
    # fill_in 'user_email', :with => 'user@email.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'
    # save_and_open_page
    click_on 'Sign up'
    expect(page).to have_content 'mwarsame@gmail.com'
    # save_and_open_page

    product = FactoryGirl.create(:product)
    visit product_path(product)
    expect(page).to have_content 'Decaf'
    click_on 'Leave a review'
    fill_in 'Review', :with => 'Awesome coffee'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
  end

end
