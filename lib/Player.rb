require "pry"
require 'bundler'
Bundler.require

require_relative 'Show'
require_relative 'Board'
require_relative 'Application'
require_relative 'BoardCase'
require_relative 'Game'


class Player  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

  attr_accessor :first_name, :symbol

  def initialize (symbol)  #TO DO : doit régler son nom et sa valeur
    puts "Bienvenue dans Tic TAC tOE"
    puts "Quel est ton nom?"
    @first_name = gets.chomp
    puts "Bienvenu ! Tu auras le symbole #{symbol} pour cette partie. "
    puts
    @symbol = symbol
  end
end