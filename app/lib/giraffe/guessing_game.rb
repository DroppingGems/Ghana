activity = "basketball"
guess = ""
attempts = 1
limit = 3
no_chances = false

puts "Guess what activity I want to do tonight?"
    guess = gets.chomp

    while guess != activity and !no_chances
        if attempts < limit
            puts "Nope, Try Again"
            guess = gets.chomp
            attempts += 1
        else
            no_chances = true
        end
    end

if no_chances
    puts "You Lose"
else
    puts "Congrats"
end
