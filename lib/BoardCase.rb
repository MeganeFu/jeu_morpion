require "pry"
require 'bundler'
Bundler.require

class BoardCase   #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case


attr_accessor :value, :position
	
	def initialize(position)#TO DO : doit régler sa valeur, ainsi que son numéro de case
		
		@value = " "
		@position = position
		
	end
end