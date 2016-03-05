class Transfer < ActiveRecord::Base
	belongs_to :user
	belongs_to :transfer_group
end
