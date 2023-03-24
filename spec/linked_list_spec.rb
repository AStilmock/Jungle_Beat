require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "Adds head data" do

    list = LinkedList.new

    list.head
    expect(list.head).to eq(nil)
  end

  it "Adds sounds" do
    list = LinkedList.new
    list.append("doop")
    expect(list.append("doop")).to eq("doop")
    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to be_an_instance_of(Node)
  end

  it "Counts Node data" do
    list = LinkedList.new


    
  end

end
