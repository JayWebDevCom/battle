feature 'Playability' do

  before do
    sign_in_and_play
  end

  it 'View hit points and names' do
  expect(page).to have_content 'Stannis : 100HP'
  expect(page).to have_content 'Joffrey : 100HP'
  end

  it 'players attack' do
    click_link('Attack-Player!')
    expect(page).to have_content 'Joffrey attacked Stannis'
  end

  it 'an reduces hit points' do
    click_link('Attack-Player!')
    expect(page).to have_content 'Joffrey attacked Stannis'
    expect(page).to have_content 'Joffrey 100HP Stannis 90HP'
  end

end
