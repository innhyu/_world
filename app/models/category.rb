class Category < ActiveRecord::Base
  has_many :photos, :articles
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
