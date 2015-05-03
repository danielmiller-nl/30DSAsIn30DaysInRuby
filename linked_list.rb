class LinkedList

  def initialize 
    @tail = nil
    @head = nil
  end

  def add_to_tail value
    new_node = Node.new value
    if @tail.nil?
      @tail = @head = new_node
    else
      @tail.set_next new_node
      @tail = new_node
    end
  end

  def remove_head
    if @head == @tail
      temp = @head
      @head = nil
      @tail = nil
    else
      temp = @head
      @head = @head.get_next
    end
    temp
  end

  def insert_after value,new_node_value
    insert_after_this = get_node value
    return "No such node" if insert_after_this.nil?
    new_node = Node.new new_node_value
    new_node.set_next insert_after_this.get_next
    insert_after_this.set_next new_node
  end

  def remove_after value

  end

  def contains value
    !(get_node value).nil?
  end

  def get_node value
    currentNode = @head
    currentNode = currentNode.get_next until currentNode.nil? || currentNode.value == value
    currentNode
  end

  class Node

    def initialize value
      @value = value
      @next = nil
    end

    def get_next
      @next
    end

    def set_next node
      @next = node
    end

    def value
      @value
    end

  end

end