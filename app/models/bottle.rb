class Bottle
  attr_accessor :song

  def initialize
    @song = ''

    10.downto(0).each do |number|
      @song += line_one(number)
      @song += line_two(number)
    end
  end

  def line_one(number)
    if number > 0
      bottle_on_the_wall(number)
    else
      no_more_bottles
    end
  end

  def line_two(number)
    if number > 1
      take_one_with_bottle(number)
    elsif number == 1
      take_one_without_bottle
    else
      go_store
    end
  end

  def bottle_on_the_wall(number)
    if number == 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"
    end
  end

  def no_more_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n"
  end

  def take_one_with_bottle(number)
    if number == 2
      "Take one down and pass it around, #{number-1} bottle of beer on the wall.\n\n"
    else
      "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n\n"
    end
  end

  def take_one_without_bottle
    "Take one down and pass it around, no more bottles of beer on the wall.\n\n"
  end

  def go_store
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
