class Queue

  class Node

    def initialize value
      @value = value
      @next = nil
      @prev = nil
    end

    def set_next node
      @next = node
    end

    def get_next
      @next
    end

    def set_prev node
      @prev = node
    end

    def get_prev
      @prev
    end

    def get_val
      @value
    end

  end

  def initialize
    @front = nil
    @back = nil
    @size = 0
  end

  def add value 
    new_item = Node.new value
    if @front.nil?
      @front = new_item
      @back = new_item
    else
      new_item.set_next @back
      @back.set_prev new_item
      @back = new_item
    end
    @size+=1
  end

  def remove
    @size-=1
    val = @front.get_val
    @front = @front.get_prev
    return val
  end

  def size
    @size
  end

  def print
    first = @front
    until first.nil?
      puts first.get_val
      first = first.get_prev
    end
  end

end


