class BottleShamelessGreen
  attr_accessor :song

  def initialize
    @song = ""

    10.downto(0).each do |number|
      @song += verse(number)
    end
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take one down and pass it around, no more bottles of beer on the wall.\n\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n\n"
    end
  end
end
