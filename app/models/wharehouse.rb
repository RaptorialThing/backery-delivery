class Wharehouse < ApplicationRecord
	has_many :wharehousemans, class_name "User"
end
