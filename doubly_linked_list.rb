class DoublyLinkedList

  def initialize
    @left_end = nil
    @right_end = nil
  end

  def insert_after node,value
    newNode = Node.new value,node,node.get_next
    node.set_next = newNode
  end

  def insert_before node,value
    newNode = Node.new value,node.get_prev,node
    node.set_prev = newNode
  end

  def insert_left value
    if @left_end.nil?
      @left_end = Node.new value,nil,nil
      @right_end = @left_end
    else
      @left_end = Node.new value,nil,@left_end
      @left_end.get_next.set_prev @left_end
    end
  end

  def insert_right value
    if @right_end.nil?
      @right_end = Node.new value,nil,nil
      @left_end = @right_end
    else
      @right_end = Node.new value,@right_end,nil
      @right_end.get_prev.set_next @right_end
    end
  end

  def traverse_forwards
    current = @left_end
    while current
      yield(current.get_val)
      current = current.get_next
    end
  end

  def traverse_backwards
    current = @right_end
    while current
      yield(current.get_val)
      current = current.get_prev
    end
  end

  def get_left
    @left_end
  end

  def get_right
    @right_end
  end

  def remove node
    node.get_prev.set_next node.get_next if node.get_prev
    node.get_next.set_prev node.get_prev if node.get_next
  end

  class Node

    def initialize value,prev,nxt
      @value = value
      @previous = prev
      @next = nxt
    end

    def get_next
      @next
    end

    def get_prev
      @previous
    end

    def get_val
      @value
    end

    def set_next node
      @next = node
    end

    def set_prev node
      @previous = node
    end

  end

end
