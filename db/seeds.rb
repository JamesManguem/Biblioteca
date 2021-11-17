# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


=begin
Author.create(name:"Gabriel Garcia Marquez", nationality:"Colombiana", language:"Español", )
Author.create(name:"Julio Verne", nationality:"Francesa", language:"Francés", )

Category.create(category:"Novelas", description:"Literatura de relatos")
Category.create(category:"Ficcion", description:"Relatos de ciencia ficción")
Category.create(category:"Aventuras", description:"Relatos de aventuras")

Editorial.create(name:"Aguilar", country:"España", phone:"1234567890")

User.create(name:"Gizem", phone:"9999998234",address:"istanbul-11", observation:"ninguna")
=end


rnd = Random.new
User.all.each do |user|
  edad_aleatoria = rnd.rand(20..80)
  user.update(age: edad_aleatoria)
end