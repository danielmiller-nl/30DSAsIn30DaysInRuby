class Stack

  class Node

    def initialize value
      @value = value
      @prev = nil
    end

    def setPrev node
      @prev = node
    end

    def getPrev
      @prev
    end

    def getVal
      @value
    end

  end

  def initialize
    @top = nil
    @size = 0
  end

  def add value 
    newItem = Node.new value
    if @top.nil?
      @top = newItem
      @top = newItem
    else
      newItem.setPrev @top
      @top = newItem
    end
    @size+=1
  end

  def remove
    @size-=1
    val = @top.getVal
    @top = @top.getPrev
    return val
  end

  def size
    @size
  end

  def print
    top = @top
    until top.nil?
      puts top.getVal
      top = top.getPrev
    end
  end

end

