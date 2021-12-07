feature 'Visit site' do
  scenario 'The site loads' do
    visit '/'
    expect(page).to have_content"Hi Bookmarks!"
  end

  scenario "I can see my bookmarks upon visiting /bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end