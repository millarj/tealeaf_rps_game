# This is a familiar game called Rock, Paper, Scissors

# Pseudo code
# 1. Get selection from player - Rock, Paper or Scissors
# 2. Get selection from computer - randomly generated
# 3. Make comparison
# 4. Display outcome message

puts "Welcome to the Rock(r), Paper(p), Scissors(s) Game!"

CHOICES = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper covers rock."
  when 's'
    puts "Scissors cuts paper."
  when 'r'
    puts "Rock crushes scissors."
  end
end
    

loop do
  # Player makes selection
  begin
    puts "What is your selection (r, p, or s)?"
    player_choice = gets.chomp.downcase
    puts "You selected #{player_choice} for #{CHOICES[player_choice]}"
  end until CHOICES.has_key?(player_choice)

  # Computer makes selection
  computer_choice = CHOICES.keys.sample
  puts "Computer has selected #{computer_choice} for #{CHOICES[computer_choice]}"

  # Determine outcome and display message
  if player_choice == computer_choice
    puts "It's a tie. The computer also selected #{computer_choice}"
  elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 'p' && computer_choice == 'r') || (player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "Congratulations. You win!"
  else
    display_winning_message(computer_choice)
    puts "Computer wins. Sorry."
  end

  puts "Do you want to play again (y/n)?"
  break if gets.chomp != 'y'

end