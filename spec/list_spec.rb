require "spec_helper"

RSpec.describe List do
  
  describe "# List attributes" do
    
    before :all do
      @node1=Node.new(1,nil,nil)
      @node2=Node.new(2,nil,@node1)
      @node1.next=@node2
      @list=List.new(@node1,@node2)
    end
    
    it "has a head" do 
      expect(@list.head).not_to be nil
    end
    
    it "has a tail" do 
      expect(@list.tail).not_to be nil
    end
    
  end
  
  describe "# List insert" do
  
    before :each do 
      @list=List.new(nil,nil)
      @alimento = Alimento_.new("Huevo frito",14.1,0.0,19.5)
      @alimento2 = Alimento_.new("Leche vaca",3.3,4.8,3.2)
    end 
   
    it "can insert an element" do
      @list.insert([@alimento])
      expect(@list.tail.value).to eq(@alimento)
    end
    
    it "can insert elements" do
      vector = [@alimento,@alimento2]
      @list.insert(vector)
      expect(@list.head.value).to eq(@alimento)
      expect(@list.tail.value).to eq(@alimento2)
    end
    
  end
  
end