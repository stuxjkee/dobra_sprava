class Project < ActiveRecord::Base
	has_one :report
	mount_uploader :picture, PictureUploader
	resourcify
end
