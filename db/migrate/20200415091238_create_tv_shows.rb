class CreateTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_shows do |t|
      t.references :channel 
      t.string :name, null: false, length: 255
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :favourite, default:false
      t.timestamps
    end
  end
end
