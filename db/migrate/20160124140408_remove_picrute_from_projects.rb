class RemovePicruteFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :picrutes
  end
end
