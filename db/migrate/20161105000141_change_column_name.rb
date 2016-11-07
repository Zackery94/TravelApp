class ChangeColumnName < ActiveRecord::Migration
  def change
  		 rename_column :comments, :movie_id, :trip_id
  end
end
