# A small game about rolling two six sided die vs a computer opponent.
# The rules are simple: whoever rolls the highest number wins, best of out three.
# Something built to test my understanding & use of loops, conditionals, operators etc...

my_score = 0
opp_score = 0

until (my_score || opp_score) == 2
  my_roll = rand(7) + rand(7)
  opp_roll = rand(7) + rand(7)
  if my_roll > opp_roll
    my_score += 1
      if my_score == 2
        puts "You Win!"
        break
      end
  elsif my_roll < opp_roll
    opp_score += 1
      if opp_score == 2
        puts "You Lose!"
        break
      end
  else my_roll == opp_roll
    my_score += 0
  end
end

puts my_score
puts opp_score
