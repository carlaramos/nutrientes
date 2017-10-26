require "spec_helper"
require "./lib/alimento/alimento_.rb"

RSpec.describe Alimento do
  
  before :all do
    @alimento = Alimento_.new("Huevo frito", 14.1)
  end
  
  describe "# Food atributes" do
    
    it "has a name" do
      expect(@alimento.name).not_to be nil
    end
    
    it "has proteins" do
      expect(@alimento.proteins).not_to be nil   
    end 
    
  end
  
  it "has a version number" do
    expect(Alimento::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
