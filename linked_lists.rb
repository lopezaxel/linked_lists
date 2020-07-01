class LinkedList
  attr_accessor :list

  def initialize()
    @list = []
  end

  def append(value)
    list << Node.new(value)
  end

  def prepend(value)
    list.unshift(Node.new(value))
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list_linked = LinkedList.new
list_linked.append(5)
list_linked.prepend(1)
p list_linked
