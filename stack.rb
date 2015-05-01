class Stack

  class Node

    def initialize value
      @value = value
      @prev = nil
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
    @top = nil
    @size = 0
  end

  def add value 
    new_item = Node.new value
    if @top.nil?
      @top = new_item
    else
      new_item.set_prev @top
      @top = new_item
    end
    @size+=1
  end

  def remove
    @size-=1
    val = @top.get_val
    @top = @top.get_prev
    return val
  end

  def size
    @size
  end

  def print
    top = @top
    until top.nil?
      puts top.get_val
      top = top.get_prev
    end
  end

end

