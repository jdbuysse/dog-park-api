# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DogOwner.destroy_all
Dog.destroy_all
Owner.destroy_all


bixby = Dog.create(
  name: "Bixby",
  breed: "Chow",
)
mesa = Dog.create(
  name: "Mesa",
  breed: "Jack Rascal",
)
harmony = Dog.create(
  name: "Harmony",
  breed: "Pig",
)

kyle = Owner.create(
  name: "Kyle",
  age: 99,
)
elyse = Owner.create(
  name: "Elyse",
  age: 98,
)

# this is important don't use the IDs!!!!!
DogOwner.create(
  dog: bixby,
  owner: kyle,
)

DogOwner.create(
  dog: bixby,
  owner: elyse,
)

DogOwner.create(
  dog: harmony,
  owner: elyse,
)

DogOwner.create(
  dog: mesa,
  owner: kyle,
)
