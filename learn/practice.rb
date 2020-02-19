# Create a new file called "practice.rb" in your "hello-ruby" folder, and give this a shot.
# Cryptocurrency is all the rage. You have decided to create your own,

# KelloggCoin, that will massively disrupt financial markets at the Global

# Hub.



# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – the first 
# transaction is the "ICO" (Initial Coin Offering)

blockchain = [

  { from_user: nil, to_user: "ben", amount: 21000 },

  { from_user: "ben", to_user: "evan", amount: 9000 },

  { from_user: "ben", to_user: "nathan", amount: 7000 },

  { from_user: "evan", to_user: "nathan", amount: 400 },

  { from_user: "ben", to_user: "nathan", amount: 1500 },

  { from_user: "nathan", to_user: "ben", amount: 4500 },

  { from_user: "nathan", to_user: "evan", amount: 1750 }

]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

ben_balance = 0
evan_balance = 0
nathan_balance = 0


for transaction in blockchain
    if transaction[:from_user] == "ben"
        ben_balance = ben_balance - transaction[:amount]
    elsif transaction[:from_user] == "evan"
        evan_balance = evan_balance - transaction[:amount]
    elsif transaction[:from_user] == "nathan"
        nathan_balance = nathan_balance - transaction[:amount]
    end
    if transaction[:to_user] == "ben"
        ben_balance = ben_balance + transaction[:amount]
    elsif transaction[:to_user] == "evan"
        evan_balance = evan_balance + transaction[:amount]
    elsif transaction[:to_user] == "nathan"
        nathan_balance = nathan_balance + transaction[:amount] 
    end
end

puts "Ben's KellogCoin balance is #{ben_balance}."
puts "Evan's KelloggCoin balance is #{evan_balance}."
puts "Nathan's KelloggCoin balance is #{nathan_balance}."

# It should print out:
# Ben's KelloggCoin balance is 8000
# Evan's KelloggCoin balance is 10350
# Nathan's KelloggCoin balance is 2650
