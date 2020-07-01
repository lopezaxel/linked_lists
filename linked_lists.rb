class LinkedList
  attr_accessor :list

  def initialize()
    @list = []
  end

  def append(value)
    list << Node.new(value)
    list[-2].next_node = list[-1] unless list[-2] == nil
  end

  def prepend(value)
    list.unshift(Node.new(value))
    list.first.next_node = list[1] unless list[1] == nil
  end

  def size
    list.length
  end

  def head
    list.first
  end

  def tail
    list.last
  end

  def at(index)
    list[index]
  end

  def pop
    list.pop
  end

  def contains?(value)
    list.each { |node| return true if node.value == value }

    false
  end

  def find(value)
    list.each_with_index { |node, index| return index if node.value == value }

    nil
  end

  def to_s
    string = ""
    list.each { |node| string += "( #{node.value} ) -> " }

    string += "nil"
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
list_linked.append(3)

puts list_linked
p list_linked.head
p list_linked.head.next_node
