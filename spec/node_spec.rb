require "spec_helper"

RSpec.describe Node do
  
  describe "# Node attributes" do

        before :all do
          @node=Node.new(1,2,3)
        end
        
        it "has value" do 
          expect(@node.value).not_to be nil
        end
        
        it "has next" do 
          expect(@node.next).not_to be nil
        end
        it "has prev" do 
          expect(@node.prev).not_to be nil
        end
  
    end  
end