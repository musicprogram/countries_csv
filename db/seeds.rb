require 'csv'

puts "Importing countries..."
CSV.foreach(Rails.root.join("db/countries.csv"), headers: true) do |row|
  Country.create! do |country|
    country.id = row[0]
    country.name = row[1]
  end
end
puts "Importing states..."
CSV.foreach(Rails.root.join("db/states.csv"), headers: true) do |row|
  State.create! do |state|
    state.country_id = row[0]
    state.name = row[1]
  end
end

