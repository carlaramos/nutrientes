require "spec_helper"

RSpec.describe List do
  
  before :all do
    @node1=Node.new(1,nil,nil)
    @node2=Node.new(2,nil,@node1)
    @node1.next=@node2
    @list=List.new(@node1,@node2)
  end
  
end