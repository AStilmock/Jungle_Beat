class JungleBeat

  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  #split data string in append method

  def append(data)
    array = data.split
    array.each do |sound|
      @list.append(sound)
    end
    data
  end

  def count
    @list.count
  end

end