class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :have_score
      t.integer :want_score

      t.timestamps null: false
    end
  end
end
