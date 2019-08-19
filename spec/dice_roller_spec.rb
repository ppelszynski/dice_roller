require_relative '../dice_roller'

describe Dice do 
  it 'filters dice rolls properly' do
    numbers = [10, 10, 20, 30, 40, 50, 50]

    dice = Dice.new(numbers)
    expect(dice.dice_roll.first(5)).to eq([10,20,30,40,50])
    expect(dice.dice_roll.length).to eq(6)
  end     

  it 'rolls until sum is smaller than 55' do
    numbers = [1, 1, 1, 1, 1, 1, 1]
    dice = Dice.new(numbers)
    result = dice.dice_roll
    sum = result.take(5).sum
    expect(result.length).to eq(6)
    expect(sum).to be >= 55
  end

  it 'excludes two lowest numbers when rnum is 1' do
    numbers = [10, 10, 20, 20, 20, 20, 20]
    dice = Dice.new(numbers, 1)
    result = dice.dice_roll

    expect(result.first(5)).to eq([20, 20, 20, 20, 20])
  end     
end