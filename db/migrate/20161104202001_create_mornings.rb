class CreateMornings < ActiveRecord::Migration
  def change
    create_table :mornings do |t|
      t.boolean :completed_all
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
