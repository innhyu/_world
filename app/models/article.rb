class Article < ActiveRecord::Base
	belongs_to :category

	# Validations
  	validates_presence_of :title, :content

  	# scopes
  	scope :active, where('active = ?', true)
	scope :alphabetical, order('title')
end
