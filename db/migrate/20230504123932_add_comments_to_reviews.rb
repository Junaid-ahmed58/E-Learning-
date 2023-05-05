class AddCommentsToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :comments, :text
  end
end
