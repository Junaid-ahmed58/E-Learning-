class AddUserIdToEnrollments < ActiveRecord::Migration[7.0]
  def change
		add_column :enrollments, :user_id, :integer
  end
end
