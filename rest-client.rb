require 'rest-client'

puts "what you want to search on Bing?"
text = gets.chomp

result = RestClient.get("https://www.bing.com/?=#{text}", headers={})

puts "This is your result #{result.code}"
puts "cookies #{result.cookies}"
puts "Headers #{result.headers}"