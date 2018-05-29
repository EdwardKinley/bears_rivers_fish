class Bear

  attr_reader(:name, :type, :stomach_contents)

  def initialize(name, type, stomach_contents = [])
    @name = name
    @type = type
    @stomach_contents = stomach_contents
  end

end
