require_relative "tile_rack.rb"
require_relative "word.rb"
require_relative "tile_bag.rb"
require 'spellchecker'
require 'tempfile'

class Babble	
	
	def initialize
	
	@bag = TileBag.new
	@rack = TileRack.new
	@score = 0
	end

	def run
	input = ""
	while input != ":quit"
		while
	 	@rack.number_of_tiles_needed > 0
		@rack.append(@bag.draw_tile)
		end
	
	
	p @rack.hand
	p "Guess a word"
	input = gets.chomp
	if input == ":quit" 
		p "Thanks for playing, total score:" + @score.to_s 
		break
	end
	p input

	if Spellchecker::check(input.upcase)[0][:correct] 
		if @rack.has_tiles_for?(input.upcase)
			input_word_score = @rack.remove_word(input.upcase).score
			@score += input_word_score
			p "You made " + input + " for " + input_word_score.to_s + " points." + " total score: " + @score.to_s 
		else
 			p "Not enough tiles." + " total score: " + @score.to_s
		end		
			
	else p "Not a vaild word." + " total score: " + @score.to_s

	end
     end
end
end

Babble.new.run
