require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.paulhuisman-online.nl/"
doc = Nokogiri::HTML(open(url))
# Search for nodes by css
doc.css('h2').each do |link|
puts link.content
end


