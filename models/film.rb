require_relative('customer.rb')
require_relative('ticket.rb')

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'][0].to_i if options['id']
    @title = options['title']
    @price = options['price'].to_i
  end

end
