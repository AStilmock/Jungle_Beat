require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
    expect(list = LinkedList.new).to eq(list)
  end
require 'pry'; binding.pry


end
