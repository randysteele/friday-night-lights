require 'nokogiri'
require 'open-uri'
require 'bye-bug'

class Scraper
the_d_zone_url = "https://football.thedzone.com/"

html = open(the_d_zone_url)

doc = Nokogiri::HTML(html)

byebug

end
scrape = Scraper.new
