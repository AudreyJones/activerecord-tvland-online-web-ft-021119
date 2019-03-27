class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(arg)
    new_network = Network.new(arg)
    self.network = new_network
binding.pry
  end
end
