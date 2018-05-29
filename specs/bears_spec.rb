require("minitest/autorun")
require_relative("../bears.rb")
require_relative("../rivers.rb")

class BearsTest < MiniTest::Test

  def setup()
    @yogi_bear = Bear.new("Yogi", "Grizzly")
    @amazon = River.new("Amazon", ["Fingers", "Cake", "n Chips", "Pi", "Ee", "Ing"])
  end

  def test_bear_name
    assert_equal("Yogi", @yogi_bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @yogi_bear.type)
  end

  def test_bear_stomach_contents
    assert_equal(0, @yogi_bear.stomach_contents.count)
  end

  def test_bear_takes_fish_from_river
    @yogi_bear.takes_fish_from_river(@amazon)
    assert_equal(1, @yogi_bear.stomach_contents.count)
    assert_equal(5, @amazon.fish_in_river.count)
  end

  def test_bear_roar
    assert_equal("Roar!", @yogi_bear.roar)
  end

  def test_food_count__0
    assert_equal(0, @yogi_bear.food_count)
  end

  def test_food_count__2
    @yogi_bear.takes_fish_from_river(@amazon)
    @yogi_bear.takes_fish_from_river(@amazon)
    assert_equal(2, @yogi_bear.food_count)
  end

end
