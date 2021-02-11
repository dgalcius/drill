require "rubygems"
require "nokogiri"
require "open-uri"

fin = ARGV[0]

doc = Nokogiri::HTML(open(fin))
author = doc.css('meta[@name="author"]').attribute("content")
title = doc.css('title').text
puts "---"
puts "author: #{author}"
puts "title: #{title}"
puts "words:"

i, j = 0, 0
doc.css('table tr').each do |e|
  i = i + 1
  e.css('td').each do |ee|
    puts  "  - en: #{ee.text}" if j == 0
    puts  "    lt: #{ee.text}" if j == 1
    j = j + 1
  end
  j = 0
end
