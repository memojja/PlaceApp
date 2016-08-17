class Place < ApplicationRecord
	validates :name, presence: true #,length: {minimum: 10}
 #validates :description presence: true ,length: {maximum: 500}
	belongs_to :category
	has_many :comments
	belongs_to :owner
	has_many :reservations


end
