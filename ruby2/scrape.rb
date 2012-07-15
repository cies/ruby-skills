require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'

def scrapeBalls(url)
	doc = Nokogiri::HTML(open(url))
	# Add all h2 to array
	h2list = Array.new
	doc.css('h2').each do |link|
	  unless link.content.nil?	
	    h2list << link.content
	  end
	end
	return h2list
end


get '/' do
  scrapeBalls("http://www.paulhuisman-online.nl/")
end

