require 'nokogiri'
require 'open-uri'
require 'byebug'

class Scraper
    def scrape_tabs_urls
        the_d_zone_url = "https://football.thedzone.com/"
        html = open(the_d_zone_url)
        doc = Nokogiri::HTML(html)
    
        dzone = doc.css('ul')[1]
        byebug
    end
end
scrape = Scraper.new
scrape.scrape_tabs_urls
