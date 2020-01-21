require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::Append < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileGroup.new
    end

    # test method namestest_create_empty_tile_group

    def test_append_one_tile
	@pd.append( :A )
        assert_equal :A, @pd.tiles[0]
    end

    def test_append_many_tiles
        @pd.append( :A )
	@pd.append( :B )
	@pd.append( :C )
 	@pd.append( :D )

        assert_equal [ :A, :B, :C, :D ], @pd.tiles
    end

    def test_append_duplicate_tiles
        @pd.append( :A )
        @pd.append( :B )
        @pd.append( :A )
        @pd.append( :B )

        assert_equal [ :A, :B, :A, :B ], @pd.tiles
    end
end

