class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :amount
      t.date :tansfered_at
      t.integer :transfer_group_id
      t.integer :user_id
      t.string :comment
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
