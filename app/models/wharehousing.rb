class Wharehousing < ApplicationRecord
	belongs_to :wharehouse
	belongs_to :delivery_courier_bids
	belongs_to :wharehouseman
end
