class Report < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :project
end
