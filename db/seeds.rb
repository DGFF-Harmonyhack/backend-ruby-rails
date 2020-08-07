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


10.times do
    User.create(
        uu: SecureRandom.hex(10)
    )
end


60.times do
    Event.create(
        description: Faker::TvShows::RickAndMorty.quote,
        user_id: User.all.sample.id,
        long: Faker::Address.longitude,
        lat: Faker::Address.latitude
    )
end

120.times do
    Response.create(
        event_id: Event.all.sample.id,
        response_type: ["haveEvi", "needEvi", "noEvi", "other"].sample,
        details: Faker::TvShows::RickAndMorty.quote,
        user_id: User.all.sample.id
    )
end
