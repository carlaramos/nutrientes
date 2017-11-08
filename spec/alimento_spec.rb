require "spec_helper"
require "./lib/alimento/alimento_.rb"

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
      
    it "has to_s" do
      expect(@alimento.to_s).to eq("#{@alimento.name}\tproteinas:#{@alimento.proteins}\tglúcidos:#{@alimento.glucids}\tlípidos:#{@alimento.fats}")
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
  end
  
  it "has a version number" do
    expect(Alimento::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
  
end
