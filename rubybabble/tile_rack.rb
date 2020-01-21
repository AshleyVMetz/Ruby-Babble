require_relative "tile_group.rb"
require_relative "word.rb"
require "set"
class TileRack < TileGroup
# the initialize method is the constructor
    def initialize
        super

    end

    def number_of_tiles_needed
        count = (7-@tiles.length)
    end

    def has_tiles_for?(text)
#	text.chars.sort == hand.chars.sort
#	text.chars.to_set.subset?(hand.chars.to_set)
#	text.count (text.each do |letter|
#	 count_letter = letter.count
	has_all_letters = true
	letter_count(text).each do |letter, count|
	hand_hash = letter_count(hand)
	if hand_hash.key? letter
		if hand_hash[letter] >= count
		has_all_letters &&= true
		else
		has_all_letters &&= false

		end
	else
	has_all_letters &&= false
	end	 	 
	end
	return has_all_letters
    end

   
    def letter_count(str)

  
 	 counts = {}

	 str.each_char do |char|

   	 next if char == " "

    	counts[char] = 0 unless counts.include?(char)

	    counts[char] += 1

	 end
 
 	counts


    end

    def remove_word(text)
	if (has_tiles_for?(text))
	word = Word.new
	   text.chars.each do |letter|
		letter_sym = letter.to_sym
		remove(letter_sym)
		word.append(letter_sym)
		end
	return word
	else
	   return nil
	end
    end


end

