require 'rails_helper'

RSpec.feature "Delivery", :type => :feature do
  scenario "User creates a new delivery" do
    visit new_delivery_url
     fill_in 'start_time', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
     fill_in 'charity.name'
   
    click_button "Create Delivery"
    visit deliveries_path
    expect(page).to have_text("Delivery was successfully created.")
  end
end