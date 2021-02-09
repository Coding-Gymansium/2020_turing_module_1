class Groomer
  attr_reader :name, :customers
  def initialize(info)
    @name = info[:name]
    @customers = []
    @services = {washing: 25, hair_cut: 35, nails: 35}
  end

  def add_customer(customer)
    @customers << customer
  end

  def customer_pets(customer)
    @customers.map do |person| 
      person == customer
        person.pets 
    end.flatten
  end

  def customer_with_balances
    
    @customers.map do |customer| 
      if customer.outstanding_balance > 0
        customer
      end
    end    
  end

  def customer_pets_by_type(pet_type)
    @customers.map do |customer, pets = customer.pets| 
      pets.find_all {|pet| pet.type == pet_type }
    end.flatten.count 
  end

  def generate_invoice(customer, pet, service)
    invoice = {
      customer: customer.name, 
      pet: pet.name, 
      service: {
        name: service.to_s.capitalize, 
        charge: charge_for_service(customer, service)
      }
    }
  end

  def charge_for_service(customer, service)
    amount = @services[service]
    customer.charge(amount)
  end


end

