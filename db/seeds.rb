# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all 
Response.destroy_all

Event.create(
    location: "123 asdf",
    resolved_stat: false, 
    description: "this and that",
    creater_uid: "a1b2c3d4"
)
Response.create(
    event: Event.first,
    has_evidence: true, 
    comment: "omg wow"
)


