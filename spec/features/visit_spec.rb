feature 'Visit site' do
  scenario 'The site loads' do
    visit '/'
    expect(page).to have_content"Hi Bookmarks!"
  end
end