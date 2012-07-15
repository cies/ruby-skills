require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'

def scrapeBalls(url)
  unless url.empty?	
    doc = Nokogiri::HTML(open(url))

    # Add all found h2s to array
    h2list = Array.new
    doc.css('h2').each do |link|
      unless link.content.empty?	
        h2list << link.content
      end
    end
    return h2list
  end
end

# use sinatra to show h2s found
get '/' do
  'Sup strangers'
end

post '/' do
  scrapeBalls("http://www.paulhuisman-online.nl")
end
