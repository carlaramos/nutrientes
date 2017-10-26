require "spec_helper"
require "./lib/alimento/alimento_.rb"

RSpec.describe Alimento do
  
  before :all do
    @alimento = Alimento_.new()
  end
  
  
  
  it "# Food atributes" do
    
  end
  
  it "has a version number" do
    expect(Alimento::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
