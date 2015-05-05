class BinarySearchTree

  def initialize value
    @value = value
    @parent = nil
    @left_child = nil
    @right_child = nil
  end

  def insert value
    if value < @value
      if @left_child.nil?
        self.set_left BinarySearchTree.new value
      else
        @left_child.insert value
      end
    else
      if @right_child.nil?
        self.set_right BinarySearchTree.new value
      else
        @right_child.insert value
      end
    end
  end

  def contains value
    if @value == value
      true
    else
      if value<@value
        if @left_child.nil?
          false
        else
          @left_child.contains value
        end
      else
        if @right_child.nil?
          false
        else
          @right_child.contains value
        end
      end
    end
  end

  def set_parent parent
    @parent = parent
  end

  def parent
    @parent
  end

  def left_child
    @left_child
  end

  def set_left bst
    @left_child = bst
  end

  def set_right bst
    @right_child = bst
  end

  def right_child
    @right_child
  end

  def value
    @value
  end

end