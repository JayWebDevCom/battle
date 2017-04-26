def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Joffrey'
  fill_in 'player_2', with: 'Stannis'
  click_on('To Battle!')
end
