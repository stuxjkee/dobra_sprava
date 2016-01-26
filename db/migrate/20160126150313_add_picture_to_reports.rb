class AddPictureToReports < ActiveRecord::Migration
  def change
    add_column :reports, :picture, :string
  end
end
