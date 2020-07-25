puts "Please enter a number"

num1 = gets.chomp

puts "Please enter a operator"

ops = gets.chomp

puts "please enter another number"

num2 = gets.chomp

if ops == "+"
    puts (num1.to_f) + (num2.to_f)
    elsif ops == "-"
        puts (num1.to_f - num2.to_f)
        elsif ops == "*"
            puts (num1.to_f * num2.to_f)
            elsif ops == "/"
                puts num1.to_f / num2.to_f
            else puts 'Operator Not Found, Please Try Again'
end
 