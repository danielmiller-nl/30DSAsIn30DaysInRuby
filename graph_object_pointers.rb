class Graph

  def initialize
    @nodes = Node.new
  end

  def add_node node
    @nodes.add node,{}
  end

  def contains node
    @nodes.contains node
  end

  def remove_node node
    @nodes.remove node 
  end

  def has_edge from_node,to_node
    @nodes.get_sub(from_node,to_node) && (@nodes.get_sub(from_node,to_node)[from_node] == @nodes.get(from_node))
  end

  def add_edge from_node,to_node
    @nodes.get(from_node)[to_node] = @nodes.get to_node
    @nodes.get(to_node)[from_node] = @nodes.get from_node
  end

  def remove_edge from_node,to_node
    (@nodes.get from_node).delete to_node
    (@nodes.get to_node).delete from_node
  end 

  def for_each_node &block
    @nodes.each(&block)
  end

  class Node

    def initialize
      @node = {}
    end

    def add key,val
      @node.store key,val
    end

    def remove key
      @node.delete key
    end

    def contains key
      @node.has_key? key
    end

    def get key
      @node[key]
    end

    def get_sub key,sub_key
      return nil if @node[key].nil?
      @node[key][sub_key]
    end

    def each &block
      @node.each {|x| block.call(x)} 
    end

  end

end
