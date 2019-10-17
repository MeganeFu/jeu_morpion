require "pry"
require 'bundler'
Bundler.require

require_relative 'Show'
require_relative 'Board'
require_relative 'Player'
require_relative 'BoardCase'
require_relative 'Game'

class Application < Game
	
	def perform 
		
    while @board.victory? == false
      self.turn
		end
		game_end()
	end
end

Application.new.perform()

binding.pry