class News < ActiveRecord::Base
	resourcify
	mount_uploader :image, PictureUploader
end
