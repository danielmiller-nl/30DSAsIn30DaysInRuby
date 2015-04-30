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
  end

  def remove
    val = @top.getVal
    @top = @top.getPrev
    return val
  end

  def print
    top = @top
    until top.nil?
      puts top.getVal
      top = top.getPrev
    end
  end

end

