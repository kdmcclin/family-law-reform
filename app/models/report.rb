class Report < ActiveRecord::Base
	belongs_to :user

	validates :state, 	presence: true
	validates :person, 	presence: true
	validates :content, presence: true
end