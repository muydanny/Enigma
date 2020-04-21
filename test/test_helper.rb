require 'simplecov'
SimpleCov.start 'rails'
SimpleCov.start do
  add_filter "encrypt.rb"
  add_filter "decrypt.rb"
end
puts "required simplecov"
