class Dev < ActiveRecord::Base
    has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.map { |freebie| freebie.item_name }.include?(item_name)
  end

  def give_away(dev, freebie)
    if dev == self
      "You can't give yourself a Freebie!"
    elsif self.freebies.include?(freebie)
      freebie.dev_id = dev.id
      freebie.save
      "Given the #{freebie.item_name} to #{dev.name}!"
    else
      "You don't own that Freebie!"
        end
    end 
end
