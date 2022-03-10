class Mouse
  attr_reader :name, :found

  def initialize(input_name)
    @name = input_name
    @found = false
  end

  def catch # 24
    @found = true
  end
end