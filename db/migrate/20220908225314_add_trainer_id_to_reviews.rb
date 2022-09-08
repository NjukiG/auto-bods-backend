class AddTrainerIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :trainer_id, :integer
  end
end
