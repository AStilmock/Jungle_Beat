require 'rspec'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do

  it "exits" do

    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)
    expect(jb.list).to be_an_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)

  end

  it "Adds to the Jungle Beat" do

    jb = JungleBeat.new
    jb.append("deep doo ditt")
    require 'pry'; binding.pry
  end

end
