class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :description
      t.integer :amount
      t.timestamps
    end
  end
end
