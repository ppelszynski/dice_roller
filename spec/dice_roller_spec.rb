require_relative '../dice_roller'

describe Dice do 
  it 'filters dice rolls properly' do
    numbers = [1, 1, 2, 3, 4, 5, 5]

    dice = Dice.new(numbers)
    expect(dice.dice_roll).to eq([1,2,3,4,5])
  end     
end