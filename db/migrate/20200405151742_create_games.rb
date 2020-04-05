class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.float :average_rating

      t.timestamps
    end
  end
end
