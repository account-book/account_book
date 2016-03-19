class TransferGroup < ActiveRecord::Base
	has_many :transfers
	belongs_to :user
end
