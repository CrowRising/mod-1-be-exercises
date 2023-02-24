cities_lived_in = {
        michaela: ["Philadelphia", "Fort Collins", "Seattle"],
        mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
        pamela: ["Lansing"],
        alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
        }
# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]
    unique_cities = []

    cities_lived_in.each do |_, cities|
        cities.each do |city|
        unique_cities << city if unique_cities.include?(city) == false
        end
    end

# p unique_cities
# Problem #2: 
    humans = []
    cities_lived_in.each do |name, cities|
        cities.each do|city|
    
        humans.push(name.to_s.capitalize) if city == "Philadelphia"
        end
    end 
p humans
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :salvador]
# or
# ["Michaela", "Mike", "Salvador"]

# Problem #3: 
city_pop = {}
cities_lived_in.each do |name, cities|
    cities.each do |city|
        if city_pop[city] != nil
            require 'pry'; binding.pry
            city_pop[city] += 1
        else
            require 'pry'; binding.pry
            city_pop[city] = 1
        end
    end

# end
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 
city_pop = Hash.new(0)
cities_lived_in.each do |name, cities|
    cities.each do |city|
     city_pop[city] += 1   
    end

end
p city_pop
# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }
