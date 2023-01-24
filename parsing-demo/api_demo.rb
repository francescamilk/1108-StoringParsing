require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/francescamilk"

raw_user = URI.open(url).read
user = JSON.parse(raw_user)

# Name lives in Location
puts "#{user["name"]} lives in #{user["location"]}"