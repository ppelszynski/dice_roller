class Dice
  def initialize(numbers = nil, rnum = nil)
    if rnum == nil
      temp = rand(1..30)
      if temp <= 7 && temp >= 1
        @rnum = rand(1..30)
      end
    else
      @rnum = rnum
    end

    if numbers == nil
      @numbers = []
      7.times { @numbers.push rand(1..20) }
    else
      @numbers = numbers
    end
  end

  def dice_roll
    sum = 0
    valid = true

    while sum <= 55
      if valid
        numbers = @numbers
      else
        numbers = []
        7.times { numbers.push rand(1..20) }
      end

      min = numbers.min

      if @rnum == 1
        numbers.delete_at(numbers.find_index(min))
        max = numbers.min
      else
        max = numbers.max
      end

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

      valid = false
      sum = filtered_numbers.sum
      filtered_numbers.push rand(1..20)
    end



    filtered_numbers
  end
end

dice = Dice.new
puts dice.dice_roll