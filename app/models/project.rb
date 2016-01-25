class Project < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	resourcify
end
