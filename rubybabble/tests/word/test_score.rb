require "minitest/autorun"
require_relative "../../word.rb"
class Word::TestScore < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = Word.new
    end

    # test method namestest_create_empty_tile_group

    def test_empty_word_should_have_score_of_zero
	
        assert_equal 0, @pd.score
    end

    def test_score_a_one_tile_word
	@pd.append( :A )
        assert_equal 1, @pd.score
    end

    def test_score_a_word_with_multiple_different_tiles
        @pd.append( :B )
	@pd.append( :A)
 	@pd.append( :D )

        assert_equal 6, @pd.score
    end

    def test_score_a_word_with_recurring_tiles

        @pd.append( :B )
        @pd.append( :A)
        @pd.append( :A )

        assert_equal 5, @pd.score
    end



end
