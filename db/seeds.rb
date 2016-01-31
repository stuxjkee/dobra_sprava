# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.email = "stuxjkee@sigaint.com"
user.password = "test1234"
user.add_role "admin"
user.save


Order.create(fullname: 'Andrew Largeman', amount: '228', project_id: Project.last.id)
Order.create(fullname: 'John Lennon', amount: '1488', project_id: Project.first.id)
Order.create(fullname: 'Jack Sparrow', amount: 'over9999', project_id: Project.last.id)