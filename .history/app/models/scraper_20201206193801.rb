require 'nokogiri'
require 'open-uri'
require 'byebug'

class Scraper
    def scrape_updates_urls
        the_d_zone_url = "https://football.thedzone.com/"
        html = open(the_d_zone_url)
        doc = Nokogiri::HTML(html)        
        dzone = doc.css('.grid-container').css('ul').css('li').css('a')
        updates_urls = []
        dzone.each do |d|
          url = d.attribute('href').value
          updates_urls << url  
        end
        scrape_updates_pages(updates_urls)
    end

    def scrape_updates_pages(updates_urls)
        updates_urls.each do |update_url|
            url = "https://football.thedzone.com/whats_happening#{update_url}"
            html = open(url)
            doc = Nokogiri::HTML(html)
            twitter = doc.css('#css-1dbjc4n r-16y2uox r-6b64d0 r-cpa5s6')
            byebug
    end   
end

scrape = Scraper.new
scrape.scrape_updates_urls
end