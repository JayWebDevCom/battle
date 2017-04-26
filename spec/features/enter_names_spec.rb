feature 'Playability' do

  before do
    sign_in_and_play
  end

  it 'View hit points and names' do
  expect(page).to have_content 'Stannis : 100HP'
  expect(page).to have_content 'Joffrey : 100HP'
  end

  it 'Hit points and confirmation' do
    click_link('Attack-Player!')
    expect(page).to have_content 'Joffrey : 100HP'
    expect(page).to have_content 'Stannis : 75HP'
    expect(page).to have_content 'Joffrey attacked Stannis'
  end

end
