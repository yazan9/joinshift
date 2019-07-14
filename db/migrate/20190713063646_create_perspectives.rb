class CreatePerspectives < ActiveRecord::Migration[5.0]
  def change
    create_table :perspectives do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :answers, null: false
      t.timestamps
    end
  end
end
