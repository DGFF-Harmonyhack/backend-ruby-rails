# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'securerandom'
require 'faker'

Event.destroy_all 
Response.destroy_all
User.destroy_all


5.times do 
    User.create(
        uu: SecureRandom.hex(10)
    )
end


60.times do 
    Event.create(
        location: Faker::TvShows::RickAndMorty.location,
        description: Faker::TvShows::RickAndMorty.quote,
        user_id: User.all.sample.id
    )
end 

60.times do 
    Response.create(
        event_id: Event.all.sample.id,
        has_evidence: true, 
        comment: Faker::TvShows::RickAndMorty.quote,
        user_id: User.all.sample.id
    )
end 
 

