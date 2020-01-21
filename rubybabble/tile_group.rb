class TileGroup

    attr_accessor :tiles 

    # the initialize method is the constructor
    def initialize
        @tiles = []
     end

    # a method for objects of this class

    def append(tile)
	@tiles.push(tile)
    end

    def remove(tile)
	@tiles.delete_at(@tiles.index(tile))
    end

    def hand
	@tiles.map(&:to_s).join	
    end

end
