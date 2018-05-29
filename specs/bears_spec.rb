require("minitest/autorun")
require_relative("../bears.rb")

class BearsTest < MiniTest::Test

  def setup()
    @yogi_bear = Bear.new("Yogi", "Grizzly")
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

end
