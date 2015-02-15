require_relative '../lib/pawn'

describe Pawn do

  it 'can be initialized with a location' do
    pawn = Pawn.new("A1")
    expect(pawn.location).to eq("A1")
  end

  it 'can be initialized with another location' do
    pawn = Pawn.new("A2")
    expect(pawn.location).to eq("A2")
  end

  it 'can be moved to another location' do
    pawn = Pawn.new("A1")
    pawn.move_to("A3")
    expect(pawn.location).to eq("A3")
  end

  it 'cannot be moved back' do
    pawn = Pawn.new("A5")
    pawn.move_to("A4")
    expect(pawn.location).to eq("A5")
  end

  it 'cannot be moved beyond 8 spaces' do
    pawn = Pawn.new("A7")
    pawn.move_to("A9")
    expect(pawn.location).to eq("A7")
  end
  
end