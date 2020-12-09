# Load the Rails application.
require_relative 'application'
require 'link_thumbnailer'
object = LinkThumbnailer.generate('https://football.thedzone.com/news/river-rouge-2021-ot-tyler-mcmillan-has-committed-to-tulsa')

# Initialize the Rails application.
Rails.application.initialize!
