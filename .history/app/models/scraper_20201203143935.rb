require 'nokogiri'
require 'open-uri'
require 'byebug'

class Scraper
the_d_zone_url = "https://football.thedzone.com/"

html = open(the_d_zone_url)

doc = Nokogiri::HTML(html)

dzone = doc.css('#vi00vq-responsiveaccordiontabs')

byebug

end
scrape = Scraper.new
