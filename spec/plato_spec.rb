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
    
    describe " # Plato atributes methods " do
        
        it "has a name method" do
          expect(@lentejas_arroz.name).to eq("Lentejas con arroz, salsa de tomate, huevo y plátano a la plancha")
        end 
        it "has vegetables method" do
            expect(@lentejas_arroz.vegetables[0][0].to_s).to eq("Tomate\t1.0\t3.5\t0.2")
            expect(@lentejas_arroz.vegetables[0][1].to_s).to eq("990.0")
        end
        it "has cereals method" do
            expect(@lentejas_arroz.cereals[0][0].to_s).to eq("Arroz\t6.8\t77.7\t0.6")
            expect(@lentejas_arroz.cereals[0][1].to_s).to eq("63529.0")
        end
        it "has fruits method" do
            expect(@lentejas_arroz.fruits[0][0].to_s).to eq("Plátano\t1.2\t21.4\t0.2")
            expect(@lentejas_arroz.fruits[0][1].to_s).to eq("1844.0")
        end
        it "has proteins method" do
            expect(@lentejas_arroz.proteins[0][0].to_s).to eq("Lentejas\t23.5\t52.0\t1.4")
            expect(@lentejas_arroz.proteins[0][1].to_s).to eq("25168.0")
        end
        it "has oils method" do
            expect(@lentejas_arroz.oils[0][0].to_s).to eq("Aceite de oliva\t0.0\t0.2\t99.6")
            expect(@lentejas_arroz.oils[0][1].to_s).to eq("6729.0")
        end
    end
    
    describe " # Plato has to_s" do
        
        it "vegetables has to_s" do
            expect(@lentejas_arroz.vegetables[0][0].to_s).to eq("Tomate\t1.0\t3.5\t0.2")
        end
        it "cereales has to_s" do
            expect(@lentejas_arroz.cereals[0][0].to_s).to eq("Arroz\t6.8\t77.7\t0.6")
        end
        it "fruits has to_s" do
            expect(@lentejas_arroz.fruits[0][0].to_s).to eq("Plátano\t1.2\t21.4\t0.2")
        end
        it "proteins has to_s" do
            expect(@lentejas_arroz.proteins[0][0].to_s).to eq("Lentejas\t23.5\t52.0\t1.4")
            expect(@lentejas_arroz.proteins[1][0].to_s).to eq("Huevo frito\t14.1\t0.0\t19.5")

        end
        it "oils has to_s" do
           expect(@lentejas_arroz.oils[0][0].to_s).to eq("Aceite de oliva\t0.0\t0.2\t99.6")
        end
        it "plato has to_s" do
            expect(@lentejas_arroz.to_s).to eq("Lentejas con arroz, salsa de tomate, huevo y plátano a la plancha\n================================================================= \nComposición nutricional: \nTomate\t1.0\t3.5\t0.2\t990.0\nCalabaza\t1.1\t4.8\t0.1\t1225.0\nArroz\t6.8\t77.7\t0.6\t63529.0\nPlátano\t1.2\t21.4\t0.2\t1844.0\nLentejas\t23.5\t52.0\t1.4\t25168.0\nHuevo frito\t14.1\t0.0\t19.5\t15073.5\nAceite de oliva\t0.0\t0.2\t99.6\t6729.0\nValor energético:\t114558.5\n")
        end
    end
puts @lentejas_arroz
    
    
end