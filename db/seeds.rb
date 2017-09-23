# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserObjective.destroy_all
Objective.destroy_all
UserBadge.destroy_all
Badge.destroy_all
User.destroy_all

puts 'lets create users'

User.create!(
  email: 'riberac@gmail.com',
  password: '1234',
)

puts 'lets create badges'

Badge.create!(
  name: 'Le gastronome'
)

Badge.create!(
  name: 'Le randonneur'
)

Badge.create!(
  name: 'Le cycliste'
)

puts 'lets create userbadges'

Badge.all.each do |badge|
  UserBadge.create!(
  user: User.last,
  badge: badge,
  )
end

puts 'and now objectives'

Objective.create!(
  badge: Badge.first,
  name: "Specialité",
  description: "Découvrir une spécialité locale, vin, foie gras... Vous pouvez aller en chercher à...",
)

Objective.create!(
  badge: Badge.first,
  name: "Marché",
  description: "Visiter un marché comme le marché au gras, le marché aux truffes ou le marché aux noix...",
)

Objective.create!(
  badge: Badge.first,
  name: "Marché festifs",
  description: "Visiter le fameux marché nocture de la Roche Chalais ou l'estival gourmande de Saint Aulaye",
)

puts 'and now userobjectives'

UserObjective.create!(
  user_badge: UserBadge.first,
  objective: Objective.first,
)
