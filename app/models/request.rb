class Request < ApplicationRecord
	belongs_to :user
	has_many :type_requests
end
