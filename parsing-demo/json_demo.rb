require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# raw_beatles  = File.read(filepath)
# beatles_data = JSON.parse(raw_beatles)
# beatles = beatles_data["beatles"]

beatles_data = {
  title: "The Beatles",
  beatles: [
    { 
      first_name: "John",
      last_name: "Lennon",
      instrument: "guitar"
   }, 
   {
    test: true
   }
  ]
}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles_data))
end

# beatles.each do |hash|
#   # John Lennon plays the guitar
#   puts "#{hash["first_name"]} #{hash["last_name"]} plays the #{hash["instrument"]}"
# end