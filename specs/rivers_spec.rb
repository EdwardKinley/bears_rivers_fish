require("minitest/autorun")
require_relative("../rivers.rb")

class RiversTest < MiniTest::Test

  def setup()
    fish_in_amazon = ["Fingers", "Cake", "n Chips", "Pi", "Ee", "Ing"]
    @amazon = River.new("Amazon", fish_in_amazon)
  end

  def test_river_name
    assert_equal("Amazon", @amazon.name)
  end

  def test_river_fish_quantity
    assert_equal(6, @amazon.fish_in_river.count)
  end

end
