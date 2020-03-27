class PostImage < ApplicationRecord


	belongs_to :user
	attachment :image
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :shop_name, presence: true
	validates :image, presence: true

	def favorite_by?(user)
		favorites.where(user_id: user.id).exists?

		#Favorite.where(user_id: params[:id])と同じ検索しているだけ
	end
end
