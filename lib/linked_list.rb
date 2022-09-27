require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
		return self if self.head.nil?

		node = self.head
		bookmark = node.next_node
		self.head = self.tail
		self.tail = node

		until bookmark == nil
			node.next_node = node.prev_node
			node.prev_node = bookmark
			node = bookmark
			bookmark = node.next_node
		end

		node.next_node = node.prev_node
		node.prev_node = bookmark
  end

	
end

node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(3)

list = LinkedList.new

list.head = node_1
node_1.next_node = node_2
node_2.prev_node = node_1
node_2.next_node = node_3
node_3.prev_node = node_2
list.tail = node_3

# binding.pry
