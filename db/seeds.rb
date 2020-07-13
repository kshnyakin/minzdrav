# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positions = Position.create([
  { name: 'Директор'}, 
  { name: 'Менеджер'},
  { name: 'Системный администратор'}
  ])

admin = User.create({
  surname: "Иванов",
  name: "Иван",
  patrynomic: "Иванович",
  phone: "8-916-641-59-26",
  position_id: 1,
  empl_date: Time.now,
  login: "admin",
  email: "admin@minzdrav.ru",
  password: "admin"
})

admin.add_role "admin"

manager = User.create({
  surname: "Менеджеров",
  name: "Менеджер",
  patrynomic: "Менеджерович",
  phone: "911",
  position_id: 2,
  empl_date: Time.now,
  login: "manager",
  email: "manager@minzdrav.ru",
  password: "manager"
})
manager.add_role "employee"

worker = User.create({
  surname: "Работящий",
  name: "Макар",
  patrynomic: "Петрович",
  phone: "123-456",
  position_id: 2,
  empl_date: Time.now,
  login: "worker",
  email: "worker@minzdrav.ru",
  password: "worker"
})

worker.add_role "employee"