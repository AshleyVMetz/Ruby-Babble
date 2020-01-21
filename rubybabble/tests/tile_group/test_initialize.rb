require "minitest/autorun"
require_relative "../../tile_group.rb"
class TileGroup::TestInitialize < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileGroup.new
    end

    # test method namestest_create_empty_tile_group
 
    def test_create_empty_tile_group
        assert_equal true, @pd.tiles.empty?
    end

end
