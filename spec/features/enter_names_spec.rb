feature 'Testing infrastructure' do

  scenario 'players enter their names' do
    visit('/')
    fill_in 'player_1', with: 'Joffrey'
    fill_in 'player_2', with: 'Stannis'
    click_on('To Battle!')
    expect(page).to have_content 'Stannis'
    expect(page).to have_content 'Joffrey'
  end

end
