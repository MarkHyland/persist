require 'pry'

class Game 

  def win winner
  	player = Person.where(name: winner).first_or_create!
  	player.add_to_wins
  end

  def lose loser
  	player = Person.where(name: loser).first_or_create!
  	player.add_to_losses 
  end

  def tie tier
  	player = Person.where(name: tier).first_or_create!
  	player.add_to_ties
  end

  def stats starter1, starter2
  	player = Person.where(name: starter1).first_or_create!
  	player2 = Person.where(name: starter2).first_or_create!
  	"#{player.name} has won #{player.wins}, lost #{player.losses}, and tied #{player.ties}.\n #{player2.name} has won #{player2.wins}, lost #{player2.losses}, and tied #{player2.ties}.\n"
  end
end

