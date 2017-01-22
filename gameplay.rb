# begin game

puts "Welcome! Let's play a game."

while true

puts "Please choose rock, paper, or scissors. You may enter quit to end the game."

# player chooses rock, paper, scissors

choice = gets.chomp
if (choice.downcase == "rock")
  puts "You chose rock!"
elsif (choice.downcase == "paper")
  puts "You chose paper!"
elsif (choice.downcase == "scissors")
  puts "You chose scissors!"
elsif (choice.downcase == "quit")
  puts "See you later!"
else
  puts "Error."
  break
end

# computer randomly generates rock, paper, scissors
computer_choice = %w[rock paper scissors][rand(3)]

puts "The computer has chosen #{computer_choice}."

# evaluate who wins
msg = case [choice, computer_choice]

  when ['rock', 'rock'], ['paper', 'paper'], ['scissors', 'scissors']
    "You've tied the computer. Let's play again!"
  when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
    "Congratulations, you win!"
  when ['paper', 'scissors'], ['scissors', 'rock'], ['rock', 'paper']
    "Bummer, lost this round."
  end

puts msg

puts "Would you like to play again? Yes/No"

# play again

answer = gets.chomp
break if answer == "no"
end
