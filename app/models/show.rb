# require "pry"
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map do |actor|
      actor.full_name


    # grab 1st name, grab last name, grab film
    #binding.pry
  end
end
