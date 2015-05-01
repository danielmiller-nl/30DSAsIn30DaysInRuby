class Tree

  def initialize value
    @value = value
    @children = {}
  end

  def add_child value
    child_tree = Tree.new value
    @children[value] = child_tree
  end

  def contains? value
    if @children[value]||@value==value
      true
    else
      @children.each do |val,tree|
        return true if tree.contains? value
      end
      false
    end
  end

  def child_values
    @children.keys
  end

  def children
    @children
  end

  def get_child value
    @children[value] || "Not a child"
  end

  def number_of_descendants
    count = @children.size
    @children.each do |val,tree|
      count += tree.number_of_descendants
    end
    count
  end

end