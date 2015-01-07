class User < ActiveRecord::Base
	has_secure_password

	has_many :reports

	validates :email,		presence: true,
							format: { :with => /\w+@\w+\.\w+/}

	validates :displayname,	:presence => true

	validates :password,	length: { minimum: 3 },
                        	confirmation: true,
                        	presence: true
end