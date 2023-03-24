class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    current_node = @head
    if @head == nil
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end
    @head.data
  end

  def count 
    
  end

  def to_string
  
  end




end