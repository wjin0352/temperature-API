class Thermometer < ActiveRecord::Base

  def make_temp
    self.temp = rand(60..100)
    self.save
    rand(60..100)
  end

end
