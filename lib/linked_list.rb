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
    data
  end



  def count
    if @head.nil?
      counter = 0
    else
      counter = 1
      current_node = @head
      while current_node.next_node != nil
          current_node = current_node.next_node
          counter += 1
      end
    end
    counter
  end

  def to_string
    if @head.next_node == nil
      @head.data
    elsif
      @head.next_node != nil && @head != nil
      "#{@head.data} #{@head.next_node.data}"
    end
  end

  
end
