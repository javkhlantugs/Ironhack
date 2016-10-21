#name
#superpowers
#real name
#city
#arc nemesis
superman = ["Superman", ["flight", "strength", "hyperspeed"], "Clark Kent", "Metropolis", "DC", "Lex Luthor"]

puts superman[2]
superheroes = [
0,
1,
2,
{:allies => [0, 1, {:superpowers => [0, {:name => "teleportation"}]}]},

]

p superheroes[3][:allies][2][:superpowers][1][:name]

