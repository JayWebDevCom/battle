feature 'Playability' do
  before do
    sign_in_and_play
  end
scenario 'View hit points and names' do
  expect(page).to have_content 'Stannis : 100HP'
  expect(page).to have_content 'Joffrey : 100HP'
  end

end
