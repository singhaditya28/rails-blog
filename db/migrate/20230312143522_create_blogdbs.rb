class CreateBlogdbs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogdbs do |t|
      t.string :username
      # t.string :
      t.string :content
      # t.string :

      t.timestamps
    end
  end
end
