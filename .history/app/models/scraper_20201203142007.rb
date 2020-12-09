require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
the_d_zone_url = "https://football.thedzone.com/"

html = open(the_d_zone_url)

doc = Nokogiri::HTML(html)

binding.pry

end
scrape = Scraper.new
