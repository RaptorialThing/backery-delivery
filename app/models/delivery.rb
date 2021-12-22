class Delivery < ApplicationRecord
	belongs_to :item
	has_many :delivery_courier_bids
	enum status: [:seller, :wharehouse, :courier, :error, :delivered]
end
