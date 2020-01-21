require_relative "tile_group.rb"
require_relative  "tile_bag.rb"

class Word < TileGroup 
# the initialize method is the constructor
    def initialize
	super
  
    end

    def score
	sum = 0
	if (@tiles == [])
		sum = 0
	else

	   @tiles.each do |tile|
	   sum += TileBag.points_for(tile)
	end
	return sum
	end
    end

end
