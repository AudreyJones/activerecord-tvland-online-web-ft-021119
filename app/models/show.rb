class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_association(arg)
    new_network = Network.new(arg)
    self.network_id = new_network
  end
end
