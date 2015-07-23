require 'minitest/autorun'
require './normal'
require './db/setup'
require './lib/all'
require 'pry'

class TestWins < Minitest::Test

	def test_win_adds_win
		# Clears the database
		Person.destroy_all
		g = Game.new
		assert_equal 0, Person.where(name: "bobo").create!.wins
		g.win "bobo"
		assert_equal 1, Person.where(name: "bobo").first.wins
	end

	def test_ties_and_losses_hold
		Person.destroy_all
		g = Game.new
		assert_equal 0, Person.where(name: "jamba").create!.ties 
		assert_equal 0, Person.where(name: "jamba").first.losses
		g.tie "jamba"
		g.lose "jamba"
		assert_equal 1, Person.where(name: "jamba").first.ties
		assert_equal 1, Person.where(name: "jamba").first.losses
	end
end