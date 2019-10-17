require "pry"
require 'bundler'
Bundler.require

require_relative 'Application'
require_relative 'Board'
require_relative 'Player'
require_relative 'BoardCase'
require_relative 'Game'

class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
#		print(board)
		
		puts "#{board[0..2].join(" | ")}"
    puts "--|---|--"
    puts "#{board[3..5].join(" | ")}"
    puts "--|---|--"
    puts "#{board[6..8].join(" | ")}"
	end
end