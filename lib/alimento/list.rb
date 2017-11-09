require "alimento/version"

# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

class List 
    
    attr_reader :head, :tail
    
    def initialize(head,tail)
        @head = head
        @tail = tail
    end
    
    def insert vector
        vector.each do |element|
            node = Node.new(element,nil,nil)
            if(@head==nil)
                @head = node
                @tail = node
            else
                node.prev=@tail
                @tail.next = node
                @tail=node
            end
        end
    end
end