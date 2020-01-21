class TileBag

    # the initialize method is the constructor
    def initialize
  	@tile_bag =
	 [ :A, :A, :A, :A, :A, :A, :A, :A, :A, :B, :B, :C, :C, :D, :D, :D, :D,
	 :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :F, :F, :G, :G, :G,
	 :H, :H, :I, :I, :I, :I, :I, :I, :I, :I, :I, :J, :K, :L, :L, :L, :L,
	 :M, :M, :N, :N, :N, :N, :N, :N, :O, :O, :O, :O, :O, :O, :O, :O, :P,
	 :P, :Q, :R, :R, :R, :R, :R, :R, :S, :S, :S, :S, :T, :T, :T, :T, :T,
 	 :T, :U, :U, :U, :U, :V, :V, :W, :W, :X, :Y, :Y, :Z]
   	@points_hash =
	{ :A=>1, :B=>3, :C=>3, :D=>2, :E=>1, :F=>4, :G=>2, :H=>4, :I=>1, :J=>8, 
	:K=>5, :L=>1, :M=>3, :N=>1, :O=>1, :P=>3, :Q=>10, :R=>1, :S=>1, :T=>1, :U=>1, :V=>4, :W=>4, :Y=>4, :Z=>10}
     end

    # a method for objects of this class
   
    def draw_tile
	@tile_bag.delete_at(rand (@tile_bag.length))

    end

    def empty?
	@tile_bag.empty?
    end

    def self.points_for(tile)
	if tile == :E || tile == :A || tile == :I || tile == :O || tile == :N || tile == :R || tile == :T || tile == :L || tile == :S || tile == :U  
	return 1
	elsif tile == :D || tile == :G
	return 2
	elsif tile == :B || tile == :C || tile == :M || tile == :P
	return 3
	elsif tile == :F || tile == :H || tile == :V || tile == :W || tile == :Y
	return 4
	elsif tile == :K
	return 5
	elsif tile == :J || tile == :X
	return 8
	elsif tile == :Q || tile == :Z
	return 10

	end
	
	
     end	

	 
end

