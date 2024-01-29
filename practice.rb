# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".



# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#Create list of users and initial balances
users = [
  {"name" => "ben", "balance" => 0},
  {"name" => "brian", "balance" => 0},
  {"name" => "evan", "balance" => 0},
  {"name" => "anthony", "balance" => 0}
]

#For each transaction, decrease the balance of the sender
for transaction in blockchain
  for user in users
    if user["name"] == transaction["from_user"]
      user["balance"] = user["balance"] - transaction["amount"]
    end

#For each transaction, increase the balance of the recipient
    if user["name"] == transaction["to_user"]
      user["balance"] = user["balance"] + transaction["amount"]
    end
  end
end

#Display each user balance, with names capitalized
for user in users
  puts "#{user["name"].capitalize}'s KelloggCoin balance is #{user["balance"]}"
end
