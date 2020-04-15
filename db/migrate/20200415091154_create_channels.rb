class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :name, length: 255
      t.timestamps
    end
  end
end
