require './app/models/bottle_original'
require './app/models/bottle_shameless_green'

bottle_original = BottleOriginal.new
puts bottle_original.song

puts "\n\n"

bottle_shameless_green = BottleShamelessGreen.new
puts bottle_shameless_green.song
