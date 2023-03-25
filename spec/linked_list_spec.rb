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
    list.append("doop")
    expect(list.count).to eq(1)
    # require 'pry'; binding.pry
    expect(list.to_string).to eq("doop")
  end

  it "Is a new LinkedList" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.to_string
    expect(list.to_string).to eq("doop deep")

  end

  it "Makes a new LinkedList" do
    list = LinkedList.new
    list.append("plop")
    expect(list.to_string).to eq("plop")

  end

  it "Adds to the list" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

  it "Inserts a sound" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

end
