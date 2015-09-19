# This is a familiar game called Rock, Paper, Scissors

# Pseudo code
# 1. Get selection from player - Rock, Paper or Scissors
# 2. Get selection from computer - randomly generated
# 3. Make comparison
# 4. Display outcome message

puts "Welcome the Rock, Paper, Scissors Game!"

CHOICES = {r:'Rock', p:'Paper', s:'Scissors'}

loop do
  begin
    puts "What is your selection (r, p, or s)?"
    player_choice = gets.chomp.downcase
  end while CHOICES.keys.has_key?(player_choice)

  puts




end