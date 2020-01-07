class Waiter
  attr_accessor :name, :experience
  
  @@all = []
  
  def initialize(name, experience)
    @name = name
    @experience = experience
    @@all << self
  end 
  
  def new_meal(customer, total, tip)
    order = Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meals.all.select {|meal| meal.waiter == self}
  end
  
  def best_tipper
    self.meals.
  end
    
  def self.all
    @@all
  end
end