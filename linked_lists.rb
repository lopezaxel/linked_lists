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
    tail.next_node = nil
  end

  def contains?(value)
    list.each { |node| return true if node.value == value }

    false
  end

  def find(value)
    list.each_with_index { |node, index| return index if node.value == value }

    nil
  end

  def to_s(node = head)
    return "nil" if node == nil
    print "( #{node.value} ) -> "
    to_s(node.next_node)
  end

  def insert_at(value, index)
    append(value)
    list[-2].next_node = nil
    tail.next_node = list[index].next_node
    list[index].next_node = tail
  end

  def remove_at(index)
    list[index - 1].next_node = list[index].next_node
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
list_linked.insert_at(9, 1)
puts list_linked
list_linked.remove_at(1)
puts list_linked
list_linked.pop
puts list_linked
