require "minitest/autorun"
require_relative "../../word.rb"
class Word::TestInitialize < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = Word.new
    end

    # test method namestest_create_empty_tile_group

    def test_create_empty_word
        assert_equal true, @pd.tiles.empty?
    end
end
