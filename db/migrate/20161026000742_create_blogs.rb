class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :user_id
      t.string :body

      t.timestamps(null: false)
    end
  end
end
