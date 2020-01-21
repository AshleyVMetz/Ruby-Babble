require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestRemove < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileGroup.new
    end

    # test method namestest_create_empty_tile_group

    def test_remove_only_tile

        @pd.append( :A )
	@pd.remove( :A )
        assert_equal true, @pd.tiles.empty?
    end

    def test_remove_first_tile_from_many

        @pd.append( :A )
	@pd.append( :L )
	@pd.append( :B )
	@pd.append( :C )
	@pd.append( :A )
	@pd.append( :D )
	@pd.append( :E )
	@pd.append( :F )
	@pd.append( :A )
        @pd.remove( :A )
        assert_equal [ :L, :B, :C, :A, :D, :E, :F, :A ] , @pd.tiles
    end

    def test_remove_last_tile_from_many

        @pd.append( :A )
        @pd.append( :L )
        @pd.append( :B )
        @pd.append( :C )
        @pd.append( :A )
        @pd.append( :D )
        @pd.append( :E )
        @pd.append( :F )
        @pd.append( :Z )
        @pd.remove( :Z )
        assert_equal [ :A, :L, :B, :C, :A, :D, :E, :F ] , @pd.tiles
    end

    def test_remove_middle_tile_from_many

        @pd.append( :A )
        @pd.append( :L )
        @pd.append( :B )
        @pd.append( :C )
        @pd.append( :A )
        @pd.append( :D )
        @pd.append( :E )
        @pd.append( :F )
        @pd.append( :D )
        @pd.remove( :D )
        assert_equal [ :A, :L, :B, :C, :A, :E, :F, :D ] , @pd.tiles
    end

    def test_remove_multiple_tiles

        @pd.append( :A )
        @pd.append( :L )
        @pd.append( :B )
        @pd.append( :C )
        @pd.append( :A )
        @pd.append( :D )
        @pd.append( :E )
        @pd.append( :F )
        @pd.append( :D )
        @pd.remove( :A )
	@pd.remove( :C )
	@pd.remove( :D )
        assert_equal [ :L, :B, :A, :E, :F, :D ] , @pd.tiles
    end

    def test_make_sure_duplicates_are_not_removed

        @pd.append( :A )
        @pd.append( :T )
        @pd.append( :B )
        @pd.append( :C )
        @pd.append( :T )
        @pd.append( :D )
        @pd.append( :E )
        @pd.append( :T )
        @pd.append( :D )
        @pd.remove( :T )
        
        assert_equal [ :A, :B, :C, :T, :D, :E, :T, :D ] , @pd.tiles
    end

end
