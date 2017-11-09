require "alimento/version"

# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

class List 
    
    attr_reader :head, :tail
    
    def initialize(head,tail)
        @head = head
        @tail = tail
    end
    
end