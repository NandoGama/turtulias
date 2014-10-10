require 'spec_helper'
RSpec.configure do |c|
        c.expose_current_running_example_as :example
      end
feature 'Creating Projects' do
  scenario "can create a project" do
    visit '/'
    click_link 'New Project'
    fill_in 'Name', with: 'Lodge'
    fill_in 'Description', with: 'A web app for Lodge'
    click_button 'Create Project'
    expect(page).to have_content('Project has been created.')
  end
end