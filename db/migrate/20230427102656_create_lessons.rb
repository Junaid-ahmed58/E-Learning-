class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.string :content

      t.timestamps
    end
  end
end
