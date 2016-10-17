class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :statement
      t.references :eval, foreign_key: true

      t.timestamps
    end
  end
end
