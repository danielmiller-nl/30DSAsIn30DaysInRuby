class PriorityQueue

  def initialize
    @priority_queue = []
  end

  def insert item,priority
    if @priority_queue.length == 0 || priority >= @priority_queue[0][1]
      @priority_queue << [item,priority]
    else
      temp = @priority_queue[0]
      @priority_queue[0] = [item,priority]
      @priority_queue << temp
    end
  end

  def getMin
    @priority_queue[0]
  end

  def deleteMin
    new_min_index = 1
    (2...@priority_queue.length).each {|x| new_min_index = x if @priority_queue[x][1] < @priority_queue[new_min_index][1]}
    temp = @priority_queue[-1]
    @priority_queue[-1] = @priority_queue[new_min_index]
    @priority_queue[new_min_index] = temp
    @priority_queue[0] = @priority_queue.pop
  end

end