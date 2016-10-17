class CreateEvals < ActiveRecord::Migration[5.0]
  def change
    create_table :evals do |t|
      t.string :name
      t.text :intro

      t.timestamps
    end
  end
end
