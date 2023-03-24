require 'rspec'
require './lib/node'

RSpec.describe Node do

  it "exists" do
    node = Node.new
    expect(node).to be_an_instance_of(Node)
  end

  it "Has data" do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
end




