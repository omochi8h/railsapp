# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:'テニス部',circle_id: 'tennis', password:'tennis', user_content:'こんにちは',kind:0)
User.create(name:'吹奏楽部',circle_id: 'brassband', password:'brassband', user_content:'こんにちは',kind:1)
User.create(name:'ダンス部',circle_id: 'dance', password:'dance', user_content:'こんにちは',kind:2)
User.create(name:'ボランティア部',circle_id: 'volunteer', password:'volunteer', user_content:'こんにちは',kind:3)
