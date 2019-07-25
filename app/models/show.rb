class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # returns an Array of the full names of each actor associated with the a show
  def actors_list
    self.actors.map(&:full_name)
  end

end