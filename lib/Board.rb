require "pry"
require 'bundler'
Bundler.require

require_relative 'Show'
require_relative 'Application'
require_relative 'Player'
require_relative 'BoardCase'
require_relative 'Game'

class Board    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

  attr_accessor :board 

  def initialize      #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board = [*1..9].map { |num| BoardCase.new(num).position }
  end

  def play_turn (symbol)  #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    entry = gets.chomp().to_i - 1
    @board = board.each_index.map {|position| entry == position ? @board[position] = symbol : @board[position] }
  end
	

  def victory?   #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8]) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) || (@board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])      
      return true
    else 
      return false
    end
	end
end