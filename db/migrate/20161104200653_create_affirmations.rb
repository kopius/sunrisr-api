class CreateAffirmations < ActiveRecord::Migration
  def change
    create_table :affirmations do |t|
      t.string :prompt
      t.string :response
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
