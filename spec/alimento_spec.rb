require "spec_helper"

RSpec.describe Alimento do
  
  before :all do
    @alimento = Alimento_.new("Huevo frito", 14.1, 0.0, 19.5)
    @huevo_frito = Grupo_alimento.new("Huevo frito", 14.1, 0.0, 19.5,"Huevos, lácteos y helados")
  end
  
  describe "# Food atributes" do
    
    it "has a name" do 
      expect(@alimento.name).not_to be nil
    end
    
    it "has proteins" do
      expect(@alimento.proteins).not_to be nil   
    end 
    
    it "has glucids" do 
      expect(@alimento.glucids).not_to be nil
    end
    
    it "has fats" do
      expect(@alimento.fats).not_to be nil
    end
    
  end
  
  describe "# Food atributes methods" do
    
    it "has a name method" do
      expect(@alimento.name).to eq("Huevo frito")
    end 
    
    it "has proteins method" do
      expect(@alimento.proteins).to eq(14.1)
    end
    
    it "has glucids method" do
      expect(@alimento.glucids).to eq(0.0)
    end
    
    it "has fats method" do
      expect(@alimento.fats).to eq(19.5)
    end
  
  end
  
  describe "# To string" do
      
    it "Alimento_ has to_s" do
      expect(@alimento.to_s).to eq("#{@alimento.name}\tproteinas:#{@alimento.proteins}\tglúcidos:#{@alimento.glucids}\tlípidos:#{@alimento.fats}")
    end
    
    it "Grupo_alimento has to_s" do 
      expect(@huevo_frito.to_s).to eq("Huevo frito\tproteinas:14.1\tglúcidos:0.0\tlípidos:19.5\tgrupo alimenticio:Huevos, lácteos y helados")
    end
      
  end
  
  describe "# Energetic value " do
  
    it "has energetic value" do
      expect(@alimento.valor_energetico).to eq(231.9)
    end

  end
  
  describe "# Object properties" do
    
    it "belongs to a class" do
      expect(@huevo_frito.class).to eq(Grupo_alimento)
    end
    
    it "belongs to hierarchy" do 
      expect(@huevo_frito.class.superclass).to eq(Alimento_)
    end
    
    it "has a type" do
      expect(@huevo_frito).to respond_to(:valor_energetico)
    end
    
  end
  
  describe " # Alimento is comparable " do 
    
  before :all do
    @alimento = Alimento_.new("Huevo frito", 14.1, 0.0, 19.5)
    @alimento2 = Alimento_.new("Leche vaca",3.3,4.8,3.2)
    @huevo_frito = Grupo_alimento.new("Huevo frito", 14.1, 0.0, 19.5,"Huevos, lácteos y helados")
  end
  
    it "Alimento2 < alimento" do
      expect(@alimento2<@alimento).to eq(true)
    end
   it "Alimento2 <= alimento" do
      expect(@alimento2<=@alimento).to eq(true)
    end
    
    it "Alimento > alimento2" do
      expect(@alimento>@alimento2).to eq(true)
    end
    
    it "Alimento >= alimento2" do
      expect(@alimento>=@alimento2).to eq(true)
    end
    
    it "Alimento = alimento2" do
      expect(@alimento==@alimento2).to eq(false)
    end
    
    it "Compare whit another class instance" do
      expect(@alimento==1).to eq(false)
    end
    
    it "Compare alimento whit grupo_alimento" do
      expect(@huevo_frito==@alimento).to eq(true)
    end 
    
  end
  
  it "has a version number" do
    expect(Alimento::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)  
  end
  
  describe " # Functional Programming" do
    
    before :all do
      @compota_manzana = Grupo_alimento.new("Compota de manzana", 4.1, 0.0, 9.5, "Frutas y derivados" )
      @azucar = Grupo_alimento.new("Azucar", 0.0, 99.8, 0.0, "Alimentos ricos en carbohidratos")
      @yogurt = Grupo_alimento.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lacteos y helados")
      @chocolate = Grupo_alimento.new("Chocolate", 5.3, 47.0, 30.0, "Alimentos grasos") 
      
      @compota_manzana.datos = [[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9],
                            [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]]
      @azucar.datos = [[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],
                       [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]]
      @yogurt.datos = [[6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4],
                     [4.9,4.9,5.2,5.8,6.5,7.0,7.2,7.3,7.3,6.6,6.2,6.1,6.0,6.1,5.9,5.9,5.9,5.9,5.8,5.8,5.5,5.5,5.6,5.9,5.9]]
      @chocolate.datos = [[6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1],
                        [4.6,4.6,4.7,4.7,4.8,4.7,4.8,4.8,4.6,4.4,4.7,4.7,4.8,4.7,5.2,5.9,5.9,5.7,5.4,5.3,5.1,4.8,4.8,4.9,5.9]]
    end
    
    it " AIBC " do
      expect(@compota_manzana.aibc(0)).to eq(27.999999999999993)
      expect(@compota_manzana.aibc(1)).to eq(183.25)
      expect(@azucar.aibc(0)).to eq(255.99999999999997)
      expect(@azucar.aibc(1)).to eq(196.00000000000003)
      expect(@yogurt.aibc(0)).to eq(30.500000000000036)
      expect(@yogurt.aibc(1)).to eq(138.49999999999997)
      expect(@chocolate.aibc(0)).to eq(18.500000000000007)
      expect(@chocolate.aibc(1)).to eq(44.75000000000004)
    end
    
    it " Individual IG " do
      expect((@compota_manzana.aibc(0)/@azucar.aibc(0))*100).to eq(10.937499999999998)
      expect((@compota_manzana.aibc(1)/@azucar.aibc(1))*100).to eq(93.49489795918366)
      expect((@yogurt.aibc(0)/@azucar.aibc(0))*100).to eq(11.914062500000016)
      expect((@yogurt.aibc(1)/@azucar.aibc(1))*100).to eq(70.66326530612243)
      expect((@chocolate.aibc(0)/@azucar.aibc(0))*100).to eq(7.226562500000004)
      expect((@chocolate.aibc(1)/@azucar.aibc(1))*100).to eq(22.83163265306124)
    end
    
   # it " Food IG " do
   #   expect(())
  #  end
    
  end

end

