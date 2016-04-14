# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def coin_machine(coin)

coins_out = []
i = 2

3.times do
  coins_out << (coin / i).round
  i += 1
end

coins_out
end

def wonky_coins(n)

all_coins = []
holding = []
zero_count = 0

  all_coins = coin_machine(n) if all_coins.empty?

  if n > 0

    until all_coins.empty?

      all_coins.each { |num| holding << coin_machine(num) }
      holding = holding.flatten
      holding.each { |num| zero_count += 1 if num == 0 }
      holding.delete_if { |num| num == 0}

      all_coins.clear
      all_coins << holding.flatten
      holding.clear
      all_coins = all_coins.flatten

    end

  else
    zero_count = 1
  end

zero_count
end

puts wonky_coins(5) == 11
puts wonky_coins(6) == 15
puts wonky_coins(0) == 1
