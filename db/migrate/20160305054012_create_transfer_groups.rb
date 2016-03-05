class CreateTransferGroups < ActiveRecord::Migration
  def change
    create_table :transfer_groups do |t|
      t.string :place
      t.integer :user_id, null: false 

      t.timestamps null: false
    end
  end
end
