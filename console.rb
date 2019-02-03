require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')
require('pry-byebug')

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer_1 = Customer.new({'name' => 'Aaron', 'funds' => '20'})
customer_1.save()
customer_2 = Customer.new({'name' => 'Fraser', 'funds' => '15'})
customer_2.save()

customer_1.name = "Aaronovitch"
customer_1.update()

customer_1.delete()

film_1 = Film.new({'title' => 'Dead Mans Shoes', 'price' => '3'})
film_1.save()
film_2 = Film.new({'title' => 'Homeward Bound', 'price' => '5'})
film_2.save()

film_2.title = "A great film about dogs"
film_2.update()

film_1.delete()

# ticket_1 = Ticket.new({'customer_id' => '58', 'film_id' => '46'})
# ticket_1.save()
# ticket_2 = Ticket.new({'customer_id' => '25', 'film_id' => '26'})
# ticket_2.save()
#
# ticket_1.customer_id = 24
# ticket_1.update()
#
# ticket_1.delete()

binding.pry
nil
