class Item < ApplicationRecord
	belongs_to :seller, class_name: "User"
	has_many :deliveries
end
