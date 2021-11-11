feature 'Adding bookmarks' do
  scenario 'user can add to the list of bookmarks' do
    visit '/create'
    fill_in('url', with: 'www.twitter.com')
    click_button('Add')
    visit '/bookmarks'
    expect(page).to have_content 'www.twitter.com'
  end
end