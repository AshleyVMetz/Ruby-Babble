require "minitest/autorun"
require_relative "../../tile_rack.rb"
class TileRack::TestHasTilesFor < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileRack.new
    end

    def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
	@pd.append( :C )
	@pd.append( :A )
	@pd.append( :N )
        assert_equal true, @pd.has_tiles_for?("CAN")
    end

    def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
	@pd.append( :A )
        @pd.append( :C )
        @pd.append( :L )
	@pd.append( :N )

        assert_equal true, @pd.has_tiles_for?("CAN")
    end

    def test_rack_doesnt_contain_any_needed_letters
        @pd.append( :A )
        @pd.append( :C )
        @pd.append( :L )
        @pd.append( :N )

        assert_equal false, @pd.has_tiles_for?("SIT")
    end

    def test_rack_contains_some_but_not_all_needed_letters
        @pd.append( :A )
        @pd.append( :S )
        @pd.append( :L )
        @pd.append( :T )

        assert_equal false, @pd.has_tiles_for?("SIT")
    end

    def test_rack_contains_a_word_with_duplicate_letters
        @pd.append( :E )
        @pd.append( :E )
        @pd.append( :B )
        @pd.append( :N )

        assert_equal true, @pd.has_tiles_for?("BEEN")
    end

    def test_rack_doesnt_contain_enough_duplicate_letters

        @pd.append( :C )
        @pd.append( :C )
        @pd.append( :E )
        @pd.append( :E )
        @pd.append( :F )
        @pd.append( :O )

        assert_equal false, @pd.has_tiles_for?("COFFEE")
    end


end

