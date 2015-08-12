require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Add vehicle path', {:type => :feature}) do
  it('Adding a new vehicle to a new dealership') do
    visit('/')
    click_link('Add your own')

  end
end
