require "pry"
require 'bundler'
Bundler.require

require_relative 'Board'
require_relative 'Player'
require_relative 'BoardCase'
require_relative 'Application'

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


class Game  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
	
	attr_accessor :current_player, :status, :board
	@@players = []

  def initialize     #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @board = Board.new
    @player1 = Player.new("X")
    @player2 = Player.new("O")
		@show = Show.new
  end

   
  def turn     #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
		
    ObjectSpace.each_object(Player) do |player| #permet d'inspecter la class Player et traiter toutes les données générées . 
    @show.show_board(@board.board)
    @current_player = player.first_name
    puts "C'est à toi de jouer #{player.first_name}, choisis un chiffre qui n'a pas été choisi!"
		@board.play_turn(player.symbol)
		if @board.victory? == true
			return
		end
	end	
			
  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
		puts "Encore une? yes/no"
   			@again = gets.chomp
		if @again == "yes"
				puts "ca suffit comme ca..."
				return
		else
			return
		end
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
# 			print(@player1.first_name)
#			print(@player2.first_name)
      if @board.victory? == true 
        Show.new.show_board(@board.board)
        puts ""
        puts "Tu gagnes la partie ! Congrats #{@current_player} "
    end
		new_round()
 end
end
end
