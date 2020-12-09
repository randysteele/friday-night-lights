# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
object = LinkThumbnailer.generate('http://stackoverflow.com')
 => #<LinkThumbnailer::Models::Website:...>

object.title
 => "Stack Overflow"

object.favicon
 => "//cdn.sstatic.net/stackoverflow/img/favicon.ico?v=038622610830"

object.description
 => "Q&A for professional and enthusiast programmers"

object.images.first.src.to_s
 => "http://cdn.sstatic.net/stackoverflow/img/apple-touch-icon@2.png?v=fde65a5a78c6"
