class Dice
  def initialize(numbers = nil)
    if numbers == nil
      @numbers = []
      7.times { @numbers.push rand(1..20) }
    else
      @numbers = numbers
    end
  end

  def dice_roll
    rand = Random.new
    numbers = @numbers

    min = numbers.min
    max = numbers.max
    filtered_numbers = []
    min_found = false
    max_found = false

    numbers.each do |num|
      if num == min && !min_found
        min_found = true
        next
      end

      if num == max && !max_found
        max_found = true
        next
      end

      filtered_numbers.push(num)
    end

    filtered_numbers
  end
end

dice = Dice.new
puts dice.dice_roll