feature 'Visit site' do
  scenario 'The site loads' do
    visit '/'
    expect(page).to have_content"Hi Bookmarks!"
  end

  scenario "I can see my bookmarks upon visiting /bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "My Website, www.chris.com"
    expect(page).to have_content "An awful website, www.thisisterrible.com"
  end
end