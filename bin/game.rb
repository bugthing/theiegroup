#!/usr/bin/env ruby

require_relative '../config/setup'

puts 'Welcome to the game'

game = Game.new
until game.won? { game.initiate_turn! }

puts 'HIT! - the alian is dead'
