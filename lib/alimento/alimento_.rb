require "alimento/version"

class Alimento_
    
    attr_reader :name, :proteins, :glucids, :fats
    
    def initialize(name, proteins, glucids, fats)
        @name = name
        @proteins = proteins
        @glucids = glucids 
        @fats = fats
    end
    
    def to_s
        string = ("#{@name}\tproteinas:#{@proteins}\tglúcidos:#{@glucids}\tlípidos:#{@fats}")
        puts string
        return string
    end
end 