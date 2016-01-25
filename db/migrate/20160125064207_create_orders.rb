class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fullname
      t.integer :amount

      t.timestamps
    end
  end
end
