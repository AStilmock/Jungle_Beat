class LinkedList
  attr_reader 
  def initialize()
    @head = nil
  end

  def append(data)
    head = Node.new(data)
    if Node.new(data) == blank
      nil
    end
  end

  # def append("")

  # end
end