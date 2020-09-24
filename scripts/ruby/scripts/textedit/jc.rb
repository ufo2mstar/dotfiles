require 'json'
#paste this script to: jc.rb
str = ARGV[0]
usage=-> {puts "Usage: \n$ ruby #{File.basename __FILE__} 'Paste_your_str-to-convert'"}
if str.nil?
  usage[]
else
  puts "\nInput:\n\n#{str}\n"
  #todo: handle exceptions
  str = str.match(/AsyncEventTrigger\((.*)\)/).to_a[1]
  req = str.scan(/(\w+)=(.*?)[,)] /).map { |k, v| "#{k.dump}: #{v.dump}" }.join ', '
  puts "\nOutput:\n\n#{JSON.pretty_generate(JSON.parse("{#{req}}"))}\n\n"
end
