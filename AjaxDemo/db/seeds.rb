# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  { username: 'asher', password: "123" },
  { username: 'sean', password: "123" },
  { username: 'sebastian', password: "123" },
  { username: 'jon', password: "123" }
])

friendships = Friendship.create([
  { friender_id: 1, friendee_id: 2},
  { friender_id: 3, friendee_id: 2},
  { friender_id: 2, friendee_id: 1}

])

seeds = Secret.create([
  { title: "do not tell anyone about this!", author_id: 1, recipient_id: 2 },
  { title: "classified", author_id: 1, recipient_id: 2 },
  { title: "tell everyone (if you want to die)", author_id: 1, recipient_id: 2 },
  { title: "secrets here", author_id: 2, recipient_id: 1 }
])

