class JungleBeat

  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

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

  def play
    jungle_beats = @list.to_string
    `say -r 100 #{jungle_beats}`
  end

end