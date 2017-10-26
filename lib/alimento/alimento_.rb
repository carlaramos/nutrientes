require "alimento/version"

class Alimento_
    
    attr_reader :name, :proteins, :glucids
    
    def initialize(name,proteins, glucids)
        @name = name
        @proteins = proteins
        @glucids = glucids 
    end
end 