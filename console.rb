require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')
require('pry-byebug')

# Customer.delete_all()
# Film.delete_all()
# Ticket.delete_all()

customer_1 = Customer.new({'name' => 'Aaron', 'funds' => '20'})
customer_1.save()
customer_2 = Customer.new({'name' => 'Fraser', 'funds' => '15'})
customer_2.save()

film_1 = Film.new({'title' => 'Dead Mans Shoes', 'price' => '3'})
film_1.save()
film_2 = Film.new({'title' => 'Homeward Bound', 'price' => '5'})
film_2.save()

ticket_1 = Ticket.new({'customer_id' => '24', 'film_id' => '22'})
ticket_1.save()

binding.pry
nil
