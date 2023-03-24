require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    # require 'pry'; binding.pry
    expect(list).to be_an_instance_of(LinkedList)
    expect(list = LinkedList.new).to eq(list)
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
    require 'pry'; binding.pry
    expect(list).to eq(<LinkedList node=)
  end


end
