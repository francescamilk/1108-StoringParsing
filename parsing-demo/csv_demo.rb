require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

CSV.open(filepath, "w") do |row|
  
end

CSV.foreach(filepath, headers: :first_row) do |row|
  # John Lennon plays the guitar
  p "#{row["FirstName"].class} plays the #{row["Instrument(s)"]}"
end

