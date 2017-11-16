# encoding: utf-8
# Clase Alimento utilizando Ruby para la asignatura de
# Lenguajes y Paradigmas de la Programación en la que 
# trabajamos con clases, métodos, herencias y sobrecarga de operadores
# en la que las instancias son Comparable
# Author::    Carla Ramos Alonso  (mailto:alu0100895001@ull.edu.es)
# Copyright:: Cretive Commons
# License::   Distributes under the same terms as Ruby

require "alimento/version"

# Clase Alimento que representa a un alimento con el nombre y otros datos del mismo
# En alimento se incluye el mixin Comparable
class Alimento_
    

    include Comparable
    attr_reader :name, :proteins, :glucids, :fats
    # Se asignan el nombre, las proteinas, los glucidos y las grasas
    def initialize(name, proteins, glucids, fats)
        @name = name
        @proteins = proteins
        @glucids = glucids 
        @fats = fats
    end
    # Formatea la salida a texto
    def to_s
        string = ("#{@name}\tproteinas:#{@proteins}\tglúcidos:#{@glucids}\tlípidos:#{@fats}")
       # puts string
       # return string
    end
    # Devuelve el valor energético
    def valor_energetico 
        v_e = (@proteins*4)+(@glucids*4)+(@fats*9)
    end
    # Se define para incluir el mixin comparable
    # Se toma como valor para la comparación el valor energético
    def <=> (another)
        return nil unless another.is_a? Alimento_
        self.valor_energetico <=> another.valor_energetico
    end
    
end 

# Herencia de la clase Alimento
class Grupo_alimento < Alimento_
    
    attr_reader :grupo
    # Se asigna el nombre, las proteinas, los glucidos, las grasas y el grupo del alimento
    def initialize(name, proteins, glucids, fats, group)
        super(name, proteins, glucids, fats)
        @group = group
    end
    # Formatea la salida a texto
    def to_s
        string = super.to_s + "\tgrupo alimenticio:#{@group}"  
    end
end