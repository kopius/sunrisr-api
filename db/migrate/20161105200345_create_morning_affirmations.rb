class CreateMorningAffirmations < ActiveRecord::Migration
  def change
    create_table :morning_affirmations do |t|
      t.boolean :completed
      t.references :morning, index: true, foreign_key: true
      t.references :affirmation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
