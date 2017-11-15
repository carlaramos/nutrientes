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
    
    def shift_first 
        @head=@head.next
        @head.prev=nil
    end
    
    def shift_last
        @tail=@tail.prev
        @tail.next=nil
    end
    
    def to_s
        string=""
        node=@head
        while node != nil do
            string = string + node.value.to_s + "\n"
            node = node.next
        end
        return string
    end
    
    def each 
        node=@head
        while node != nil do
            yield node.value
            node = node.next
        end
    end
    

end