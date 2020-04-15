class Add < ActiveRecord::Migration[5.2]
  def change
    remove_column :tv_shows, :favourite, :boolean
    add_column :users, :favourite_show_ids, :integer, array:true, default: []
  end
end
