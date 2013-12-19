class Post < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	validates :title, presence: true
	validates :body, presence: true


	acts_as_taggable

end
