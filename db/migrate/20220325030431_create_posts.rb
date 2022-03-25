class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :team_name,           null: false
      t.integer :sport_name_id,      null: false
      t.integer :date_id,            null: false
      t.integer :time_id,            null: false
      t.integer :prefecture_id,      null: false
      t.text :place,                 null: false
      t.text :team_introduction,     null: false
      t.integer :level
      t.references :user,            null: false, foreign_key: true

      t.timestamps
    end
  end
end
