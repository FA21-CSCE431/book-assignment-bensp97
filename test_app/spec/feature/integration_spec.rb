# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '15.95'
    fill_in 'Publisheddate', with: '19970626'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J. K. Rowling')
    expect(page).to have_content('15.95')
    expect(page).to have_content('19970626')
  end
end