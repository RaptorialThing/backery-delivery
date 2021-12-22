class User < ApplicationRecord
	  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	enum role: [:client, :seller, :wharehouseman, :courier, :admin]
	has_many :items, foreign_key: :seller
end
