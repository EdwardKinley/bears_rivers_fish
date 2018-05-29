require("minitest/autorun")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

def setup()
  @fingers = Fish.new("Fingers")
end

  def test_fish_name
    assert_equal("Fingers", @fingers.name)
  end

end
