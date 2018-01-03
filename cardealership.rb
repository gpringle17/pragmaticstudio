class Customer
	attr_accessor :name
	attr_accessor :desire
	attr_accessor :money
	def initalize(name,desire,money)
		@name=name.capitalize
		@desire=desire
		@money=money
	end
end
salesmen1=Salesmen.new("john",1)
salesmen1.to_s
@inventory=Array.new

def newinventory(leave="no")
	while leave!="yes" do
	puts "Please input new inventory model."
	puts "What is the type?"
	type=gets.chomp
	puts "What is the price?"
	price=gets.chomp
	car=Inventory.new(type,price)
	@inventory.push(car)
	puts "Do you have more inventory to add? (yes,no)"
	leave=gets.chomp
	end
end
@roster=Array.new
def newroster(leave="no")
	while leave!="yes" do
	puts "Please input Salesman's name."
	name=gets.chomp
	puts "What is their current streak?"
	streak=gets.chomp
	puts "From 1 to 10 how good are they at sales?"
	skill=gets.chomp
	person=Salesman.new(name,streak,skill)
	@roster.push(person)
	puts "Are there more salespeople to add? (yes,no)"
	leave=gets.chomp
	end
end
@potential=Array.new
def newcustomer(leave="no")
	while leave!="yes" do
	puts "Please tell us about yourself."
	puts "What is your name?"
	name=gets.chomp
	puts "From 1 to 10 how ready are you to buy a car to day?"
	desire=gets.chomp
	puts "How much are you wanting to spend?"
	money=gets.chomp
	target=potential.new(name,desire,money)
	@potential.push(target)
	puts "Are there more customers? (yes,no)"
	leave=gets.chomp
	end
end

puts newinventory
puts newroster
puts newcustomer

arr = []

arr.each do |person|
	if person.name == "alan"
	puts person.name
end