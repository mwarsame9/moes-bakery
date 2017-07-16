describe "the make a user an admin process" do
  it "makes a newly created user an admin" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Decaf'
    fill_in 'Description', :with => 'Decaf Coffee Tasty'
    fill_in 'Price', :with => '5'
    # save_and_open_page
    click_on 'Create Product'
    expect(page).to have_content 'Decaf'
  end

end
