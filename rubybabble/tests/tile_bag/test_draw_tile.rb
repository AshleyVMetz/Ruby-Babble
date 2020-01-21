require "minitest/autorun"
require_relative "../../tile_bag.rb"
class TileBag::TestDrawTile < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileBag.new
    end

    # test method names start with 'test_'
    def test_has_proper_number_of_tiles
	98.times { @pd.draw_tile }      	
        
	assert_equal true, @pd.empty?
    end

    def test_has_proper_tile_distribution
       	@tiles_drawn = []
	98.times { 
	tile = @pd.draw_tile
	@tiles_drawn.push(tile)
	}

	assert_equal 9, @tiles_drawn.count( :A )
	assert_equal 2, @tiles_drawn.count( :B )
	assert_equal 2, @tiles_drawn.count( :C )
	assert_equal 4, @tiles_drawn.count( :D )
	assert_equal 12, @tiles_drawn.count( :E )
	assert_equal 2, @tiles_drawn.count( :F )
	assert_equal 3, @tiles_drawn.count( :G )
	assert_equal 2, @tiles_drawn.count( :H )
	assert_equal 9, @tiles_drawn.count( :I )
	assert_equal 1, @tiles_drawn.count( :J )
	assert_equal 1, @tiles_drawn.count( :K )
	assert_equal 4, @tiles_drawn.count( :L )
	assert_equal 2, @tiles_drawn.count( :M )
	assert_equal 6, @tiles_drawn.count( :N )
        assert_equal 8, @tiles_drawn.count( :O )
        assert_equal 2, @tiles_drawn.count( :P )
        assert_equal 1, @tiles_drawn.count( :Q )
        assert_equal 6, @tiles_drawn.count( :R )
        assert_equal 4, @tiles_drawn.count( :S )
        assert_equal 6, @tiles_drawn.count( :T )
        assert_equal 4, @tiles_drawn.count( :U )
        assert_equal 2, @tiles_drawn.count( :V )
        assert_equal 2, @tiles_drawn.count( :W )
        assert_equal 1, @tiles_drawn.count( :X )
        assert_equal 2, @tiles_drawn.count( :Y )
        assert_equal 1, @tiles_drawn.count( :Z )
	       
    end


end
