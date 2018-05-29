class Bear

  attr_reader(:name, :type, :stomach_contents)

  def initialize(name, type, stomach_contents = [])
    @name = name
    @type = type
    @stomach_contents = stomach_contents
  end

  def takes_fish_from_river(river)
    random_number = rand(river.fish_in_river.count)
    random_fish = river.fish_in_river[random_number]
    @stomach_contents.push(random_fish)
    river.fish_in_river.delete(random_fish)
  end

end
