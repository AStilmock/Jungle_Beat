class JungleBeat

  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    list = data.split
  end

end