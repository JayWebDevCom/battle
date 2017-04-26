feature 'Testing infrastructure' do

  scenario 'player name checking' do
    visit('/')
    expect(page).to have_content 'Enter Player Names'
  end

end
