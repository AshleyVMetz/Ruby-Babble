require "minitest/autorun"
require_relative "../../tile_bag.rb"
class TileBag::TestPointsFor < Minitest::Test
    # like an @Before in JUnit4
    def setup
        @pd = TileBag.new
    end

    # test method names start with 'test_'
    def test_confirm_point_values
       # assert_equal 1, TileBag.points_for(:A)
	[ :A, :E, :I, :O, :N, :R, :T, :L, :S, :U].each do | tile | 
	assert_equal 1, TileBag.points_for(tile)
	end

	[ :D, :G].each do | tile |
        assert_equal 2, TileBag.points_for(tile)
        end

	[ :B, :C, :M, :P].each do | tile |
        assert_equal 3, TileBag.points_for(tile)
        end

	[ :F, :H, :V, :W, :Y].each do | tile |
        assert_equal 4, TileBag.points_for(tile)
        end

	[ :K].each do | tile |
        assert_equal 5, TileBag.points_for(tile)
        end
	
	[ :J, :X].each do | tile |
        assert_equal 8, TileBag.points_for(tile)
        end

	[ :Q, :Z].each do | tile |
        assert_equal 10, TileBag.points_for(tile)
        end



    end
end

