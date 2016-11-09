class JayContact < ApplicationRecord
	validates :address, presence: true
	validates :phone, presence: true, format: {with: /\d/}
end
