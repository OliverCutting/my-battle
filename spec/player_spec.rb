require 'player'

describe Player do
  subject(:player1) { described_class.new("Bobby") }

  it 'returns name' do
    expect(subject.name).to eq "Bobby"
  end

  it 'shows its hit points' do
    expect(subject.hp).to eq(100)
  end

  it 'can receive damage' do
    expect{subject.receives_damage}.to change{subject.hp}.by(-10)
  end
end