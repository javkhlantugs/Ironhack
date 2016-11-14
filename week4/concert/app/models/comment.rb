class Comment < ApplicationRecord
	belongs_to :ticketmaster

	validates :name, presence: true
	validates :content, presence: true
	validates_format_of :name, :with => /\A[-a-z]+\z/

end
