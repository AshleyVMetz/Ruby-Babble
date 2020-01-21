require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestHand < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileGroup.new
    end

    # test method namestest_create_empty_tile_group

    def test_convert_empty_group_to_string

        assert_equal "", @pd.hand
    end

    def test_convert_single_tile_group_to_string
	@pd.append( :A)

        assert_equal "A", @pd.hand
    end

    def test_convert_multi_tile_group_to_string
        @pd.append( :A)
	@pd.append( :B)
	@pd.append( :C)
        assert_equal "ABC", @pd.hand
    end

    def test_convert_multi_tile_group_with_duplicates_to_string
        @pd.append( :A)
        @pd.append( :B)
        @pd.append( :A)
        assert_equal "ABA", @pd.hand
    end

end
