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

  it 'attack reduces hit points' do
    click_link('Attack-Player!')
    expect(page).to have_content 'Joffrey attacked Stannis'
    expect(page).to have_content 'Joffrey 100HP Stannis 90HP'
  end

  it 'players switch turns' do
    click_link('Attack-Player!')
    expect(page).to have_content 'Joffrey attacked Stannis'
    expect(page).to have_content 'Joffrey 100HP Stannis 90HP'
    click_link('Attack-Player!')
    expect(page).to have_content 'Joffrey 90HP Stannis 90HP'
  end

  it 'shows the winner' do
    19.times { click_link('Attack-Player!') }
    expect(page).to have_content 'Joffrey Wins!!!!!'
  end

end
