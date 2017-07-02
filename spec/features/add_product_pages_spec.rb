require 'rails_helper'

describe "adding a new product" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in "Name", :with => 'Corn'
    fill_in "Cost", :with => '10'
    fill_in "Country of origin", :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Corn'
  end

  it "gives error when no name is entered" do
  visit new_product_path
  click_on 'Create Product'
  expect(page).to have_content 'errors'
end

end
