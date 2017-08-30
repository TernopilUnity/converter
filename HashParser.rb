require 'net/http'
require 'json'
  url = 'http://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?json'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  response = JSON.parse(response)
  puts "********"
  response.each do |currency|
    puts currency["txt"]
    puts
  end
