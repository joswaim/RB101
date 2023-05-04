ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.include?('Herman')
p ages.member?('Herman')
p ages.key?('Herman')

munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?('Dino')
p advice.match?('Dino')

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
flintstones.push('Dino', 'Hoppy')
flintstones.concat(%w[Dino Hoppy])
p flintstones

advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.slice!(0..38)
p advice.slice!(0, advice.index('house'))
p advice

statement = "The Flintstones Rock!"
p statement.count('t')

title = "Flintstone Family Members"
p title.center(40)
