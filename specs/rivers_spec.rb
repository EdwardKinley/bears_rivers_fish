require("minitest/autorun")
require_relative("../rivers.rb")
require_relative("../bears.rb")

class RiversTest < MiniTest::Test

  def setup()
    fish_in_amazon = ["Fingers", "Cake", "n Chips", "Pi", "Ee", "Ing"]
    @amazon = River.new("Amazon", fish_in_amazon)
    @yogi_bear = Bear.new("Yogi", "Grizzly")
  end

  def test_river_name
    assert_equal("Amazon", @amazon.name)
  end

  def test_river_fish_quantity
    assert_equal(6, @amazon.fish_in_river.count)
  end

  def test_fish_count__6
    assert_equal(6, @amazon.fish_count)
  end

  def test_fish_count__4
    @yogi_bear.takes_fish_from_river(@amazon)
    @yogi_bear.takes_fish_from_river(@amazon)
    assert_equal(4, @amazon.fish_count)
  end

end
