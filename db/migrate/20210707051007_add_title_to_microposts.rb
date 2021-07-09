class AddTitleToMicroposts < ActiveRecord::Migration[6.1]
  def change
    add_column :microposts, :title, :string
  end
end
