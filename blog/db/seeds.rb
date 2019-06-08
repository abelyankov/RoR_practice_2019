# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.find_or_create_by(first_name: "Соловей ", last_name: "Разбойник")
ivan = Author.find_or_create_by(first_name: "Иван", last_name: "Пупкин")
Post.find_or_create_by(title: "Пост #1", text: "бла-бла-бла", author_id: ivan.id)