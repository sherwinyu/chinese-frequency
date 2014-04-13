require 'awesome_print'
require 'pry'

def filtered
  @py.select{|k, v|
    k.match(/^(s|c|z)/) or k.match /(n|g)$/
  }.sort
end

f = File.open 'character-syllable.txt'

@py = Hash.new
f.lines.each do |line|
  pinyin, tone = line.split.first.partition /\d/
  puts "#{pinyin} - #{tone}"
  @py[pinyin] ||= [0]*5
  @py[pinyin][tone.to_i] += 1
end
@py.each{|k,v| v[0] = v.reduce(:+)}


ap filtered
binding.pry
