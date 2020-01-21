require "minitest/autorun"
require_relative "../../tile_rack.rb"
class TileRack::TestRemoveWord < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileRack.new
    end

    def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
	@pd.append( :C )
	@pd.append( :A )
	@pd.append( :N )
	@pd.append( :L )
        assert_equal "CAN", @pd.remove_word("CAN").hand
    end

    def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
        @pd.append( :L )
        @pd.append( :A )
        @pd.append( :C )
        @pd.append( :N )
        assert_equal "CAN", @pd.remove_word("CAN").hand
    end

    def test_can_remove_word_with_duplicate_letters
        @pd.append( :E )
        @pd.append( :E )
        @pd.append( :B )
        @pd.append( :N )
        assert_equal "BEEN", @pd.remove_word("BEEN").hand
    end

    def test_can_remove_word_without_removing_unneeded_duplicate_letters
        @pd.append( :E )
        @pd.append( :E )
        @pd.append( :B )
        @pd.append( :N )
	@pd.append( :E )
        @pd.append( :E )
	@pd.remove_word("BEEN")
        assert_equal "EE", @pd.hand
    end


end

