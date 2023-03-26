class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      previous_node = @head
      new_node = Node.new(data)
      while previous_node.next_node != nil
        previous_node = previous_node.next_node
      end
      previous_node.next_node = new_node
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
    sounds = []
    current_node = @head
    while current_node != nil
      sounds << current_node.data
      current_node = current_node.next_node
    end
    sounds.join(" ")
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else 
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
    data
  end

  def insert(position, data)
    current_node = @head
    (position -1).times do
      return "Error - List is too short" if current_node == nil
      current_node = current_node.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(position)
    current_node = @head
    position.times do
      current_node = current_node.next_node
    end
    current_node.data
  end


  
end
