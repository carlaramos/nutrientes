# encoding: utf-8
# Clase List utilizando Ruby para la asignatura de
# Lenguajes y Paradigmas de la Programación en la que 
# trabajamos con listas doblemente enlazadas en la que las
# instancias son Enumerable
# Author::    Carla Ramos Alonso  (mailto:alu0100895001@ull.edu.es)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby
require "alimento/version"

# Clase nodo utilizada para implementar posteriormente la lista
# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

# Clase List que define la lista doblemente enlazada e 
# incluye el mixin Enumerable
class List 
    
    include Enumerable
    attr_reader :head, :tail
    # Se asigna la cabeza y la cola de la lista doblemente enlazada
    def initialize(head,tail)
        @head = head
        @tail = tail
    end
    # Inserta en la lista uno o varios elementos los cuales recibe en forma de vector    
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
    # Elimina el primer elemento de la lista
    def shift_first 
        @head=@head.next
        @head.prev=nil
    end
    # Elimina el último elemento de la lista
    def shift_last
        @tail=@tail.prev
        @tail.next=nil
    end
    # Formatea la salida a texto
    def to_s
        string=""
        each { |value| string+=value.to_s + "\n"  }   # Funciona también entre do-end
        return string
    end
    # Se incluye el metodo mixin Enumerable
    # Se define como un bucle completo sobre la lista
    def each 
        node=@head
        while node != nil do
            yield node.value
            node = node.next
        end
    end

end