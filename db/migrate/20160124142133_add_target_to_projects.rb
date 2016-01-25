class AddTargetToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :current, :integer
    add_column :projects, :target, :integer
  end
end
