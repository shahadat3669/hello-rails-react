require 'faker'

Greeting.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('greetings')

10.times do
  Greeting.create(message: Faker::Lorem.sentence(word_count: 5))
end

puts "Generated #{Greeting.count} greetings"