class Post < ApplicationRecord
	mount_uploader :video, VideoUploader
	validates :title, :video, {presence: true}
	belongs_to :user
	has_many :likes, dependent: :destroy
	has_many :post_comments, dependent: :destroy
	acts_as_taggable
	acts_as_taggable_on :tags, :interest

	def favorited_by?(user)
		likes.where(user_id: user.id).exists?
	end

	def self.search(search)
		if search
		   Post.where(['title LIKE ?', "%#{search}%"])
		else
		   Post.all
		end
	end

end
