require 'JsonBuddy'


j = Json.new("game.json")

print("Enter name: ")
n = gets.chomp
if j.check_key(n)
    print("Enter bet amount: ")
    bet_amount = gets.chomp.to_i
    money      = j.get_value(n)
    random_number = rand(0..100)
    if money.to_i >= bet_amount.to_i
        j.subtract_number(n, bet_amount.to_i)
        print("Enter guess a number 1-100:")
        guess = gets.chomp
        if random_number.to_i == guess.to_i
            print("you win")
            total = bet_amount.to_i + 100
            j.add_key(n, total.to_i)
        end 
    end
else
    j.add_key(n, 6)
end