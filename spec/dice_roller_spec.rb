require_relative '../dice_roller'

describe Dice do 
  it 'filters dice rolls properly' do
    numbers = [10, 10, 20, 30, 40, 50, 50]

    dice = Dice.new(numbers)
    expect(dice.dice_roll).to eq([10,20,30,40,50])
  end     

  it 'rolls until sum is smaller than 55' do
    numbers = [1, 1, 1, 1, 1, 1, 1]

    dice = Dice.new(numbers)
    expect(dice.dice_roll).not_to eq([1,2,3,4,5])
    expect(dice.dice_roll.sum).to be >= 55
  end     
end