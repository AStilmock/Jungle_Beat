class JungleBeat

  attr_reader :list, :data
  def initialize
    @list = LinkedList.new
    @data = data
  end

  # def all
  #   sounds = "deep dop tee doo ditt woo hoo shu"
  #   valid_sounds = sounds.split
  # end

  def append(data)
    # valid_sounds.reject{valid_sounds.includes? == false}
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