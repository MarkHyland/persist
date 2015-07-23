require 'pry'

class Person < ActiveRecord::Base

	def add_to_wins
		self.wins += 1
		save
	end

	def add_to_losses
		self.losses += 1
		save
	end

	def add_to_ties
		self.ties += 1
		save
	end

end