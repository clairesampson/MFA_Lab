require "json"
require "digest/md5"

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "Welcome. Email?"
email = gets.chomp
record = data[email]
if record == nil
  puts "Email not found in the system."
  exit
else
  puts "Match"
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "password?"
password = gets.chomp
hash = Digest::MD5.hexdigest(password)
if hash == record["password"]
  puts "Match"
else
  puts "No match :("
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite color?"
hash = gets.chomp.downcase
if hash == record["favorite_color"]
  puts "Match"
else
  puts "No match :("
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite animal?"
hash = gets.chomp.downcase
if hash == record["favorite_animal"]
  puts "Match"
else
  puts "No match :("
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "city born?"
hash = gets.chomp.downcase
if hash == record["city_born"]
  puts "Match"
else
  puts "No match :("
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "mother's name?"
hash = gets.chomp.downcase
if hash == record["mother_name"]
  puts "Match"
else
  puts "No match :("
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "first pet?"
hash = gets.chomp.downcase
if hash == record["first_pet"]
  puts "Match. Login complete."
else
  puts "No match :("
  exit
end



