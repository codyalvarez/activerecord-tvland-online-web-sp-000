# require "pry"
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors[0] + self.actors[1] + self.actors.name

    #binding.pry
  end
end
