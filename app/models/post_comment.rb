class PostComment < ApplicationRecord

	belongs_to :user
	belongs_to :post

	validates :post_id, :user_id, :comment, {presence: true}
end
