class CreateMicgroposts < ActiveRecord::Migration
  def self.up
    create_table :micgroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :micgroposts
  end
end
