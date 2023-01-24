require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
puts "Choose an ingredient:"
ingredient = gets.chomp.downcase

url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
html_doc  = Nokogiri::HTML.parse(html_file)

html_doc.search(".standard-card-new__article-title").each do |element|
  p element.text.strip
  p element.attribute("href").value
end