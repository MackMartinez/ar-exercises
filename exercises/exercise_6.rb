require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

=begin
We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. 
This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.
=end

#3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`

@employee1 = @store1.employees.create(first_name: "Macky", last_name: "Martinez", hourly_rate: 50)
@employee2 = @store2.employees.create(first_name: "Jack", last_name: "Black", hourly_rate: 12)
@employee3 = Store.find_by(id: 4).employees.create(first_name: "Mercy", last_name: "Watch", hourly_rate: 15)

#4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. 
  #Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

@employee4 = Store.find_by(id:5).employees.create(first_name: "Macky", last_name: "Martinez", hourly_rate: 50)
@employee5 = Store.find_by(id: 6).employees.create(first_name: "Jack", last_name: "Black", hourly_rate: 12)
@employee6 = Store.find_by(id: 4).employees.create(first_name: "Mercy", last_name: "Watch", hourly_rate: 15)