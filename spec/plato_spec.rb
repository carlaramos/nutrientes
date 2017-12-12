require "spec_helper"

RSpec.describe Plato do
    
    before :all do
        @lentejas_arroz = Plato.new("Lentejas con arroz, salsa de tomate, huevo y plátano a la plancha") do
            vegetable "Tomate", :porcion => "2 piezas pequeñas"
            vegetable "Calabaza", :porcion => "2 piezas pequeñas"
            fruit "Plátano", :gramos => 20
            cereal "Arroz", :porcion => "1 taza"
            protein "Lentejas", :porcion => "1/2 cucharón"
            protein "Huevo frito", :porcion => "1 pieza"
            oil "Aceite de oliva", :porcion => "1/2 cucharada"
        end
    end
    
    describe " # DSL " do
        
        it "prueba" do
            puts @lentejas_arroz
        end
        
    end
end