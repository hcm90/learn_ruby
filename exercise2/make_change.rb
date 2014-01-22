require 'rspec'

describe Changer do
  it 'can change one quarter' do
    Changer.make_change(25).should == [25]
  end

  it 'can change multiple quarters' do
    Changer.make_change(50).should == [25, 25]
  end

  it 'can change one dime' do
    Changer.make_change(10).should == [10]
  end

  it 'can change multiple dimes' do
    Changer.make_change(20).should == [10, 10]
  end

  it 'can change small complex amounts' do
    Changer.make_change(7).should == [5, 1, 1]
  end

  it 'can change large complex amounts' do
    Changer.make_change(68).should == [25, 25, 10, 5, 1, 1, 1]
  end
end

def make_change(x)
  coins = []
  until (x % 25 == x) do 
    x -= 25
    coins << 25
  end
  until (x % 10 == x) do
    x -= 10
    coins << 10
  end
  until (x % 5 == x) do
    x -= 5
    coins << 5
  end
  until (x % 1 == x) do
    x -= 1
    coins << 1
  end
  return coins
end