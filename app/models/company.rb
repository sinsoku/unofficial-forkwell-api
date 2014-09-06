class Company < ActiveRecord::Base
  validates :name, presence: true
  validates :screen_name, presence: true
end
