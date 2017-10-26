require "alimento/version"

class Alimento_
    
    attr_reader :name, :proteins
    
    def initialize(name,proteins)
        @name = name
        @proteins = proteins
    end
end 