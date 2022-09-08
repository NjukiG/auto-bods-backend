class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :trainer_id
      t.integer :package_id
      t.integer :review_id
      t.timestamps
    end
  end
end
