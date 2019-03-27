class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(arg)
    arg = Network.new(arg)
binding.pry
  end
end
