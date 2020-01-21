require "minitest/autorun"
require_relative "../../tile_rack.rb"
class TileRack::TestNumberOfTilesNeeded < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileRack.new
    end

    def test_empty_tile_rack_should_need_max_tiles

        assert_equal 7, @pd.number_of_tiles_needed
    end

    def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
	@pd.append( :A )
        assert_equal 6, @pd.number_of_tiles_needed
    end

    def test_tile_rack_with_several_tiles_should_need_some_tiles
        @pd.append( :A )
	@pd.append( :B )
	@pd.append( :A )
	@pd.append( :D )
	@pd.append( :G )

        assert_equal 2, @pd.number_of_tiles_needed
    end

    def test_that_full_tile_rack_doesnt_need_any_tiles
        @pd.append( :A )
        @pd.append( :B )
        @pd.append( :A )
        @pd.append( :D )
        @pd.append( :G )
	@pd.append( :D )
        @pd.append( :G )

        assert_equal 0, @pd.number_of_tiles_needed
    end



end
