require "alimento/version"

# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

class List 
    
    attr_reader :first, :last
    
    def initialize(first,last)
        @first = first
        @last = last
    end
    
end