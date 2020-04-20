# decrypt.rb encrypted.txt decrypted.txt 82648 240818

require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read
incoming_text = incoming_text.gsub("\n", "")
handle.close


enigma = Enigma.new
# encrypted_message = enigma.encrypt(incoming_text)
decrypted_message = enigma.decrypt(incoming_text, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")

writer.write(decrypted_message[:decryption])

writer.close

puts "Created #{ARGV[1]} with the key #{decrypted_message[:key]} and date #{decrypted_message[:date]}"
