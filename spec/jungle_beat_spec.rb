require 'rspec'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do

  it "exists" do

    jb = JungleBeat.new
    expect(jb).to be_an_instance_of(JungleBeat)
    expect(jb.list).to be_an_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)

  end

  it "Adds to the Jungle Beat" do

    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")

  end
 
  it "Adds more beats to the Jungle Beat" do

    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    expect(jb.count).to eq(6)

  end

  it "Plays the Jungle Beat sounds" do

    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.play
   
  end

  xit "Validates the Jungle Beats" do
    require 'pry'; binding.pry
    jb = JungleBeat.new("deep")
  
    

  end

end
