# decrypt.rb encrypted.txt decrypted.txt 82648 240818

require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read
incoming_text = incoming_text.gsub("\n", "")
handle.close


enigma = Enigma.new
encrypted_message = enigma.encrypt(incoming_text)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_message[:encryption])

writer.close

puts "Created #{ARGV[0]} with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
