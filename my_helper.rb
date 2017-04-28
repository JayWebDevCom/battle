def redirect_if_someone_wins
  redirect '/winner' if @attacker.hp == 0 || @defender.hp == 0
end
