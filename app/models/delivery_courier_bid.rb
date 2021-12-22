class DeliveryCourierBid < ApplicationRecord
	belongs_to :courier, class_name "User"
	belongs_to :delivery
end
