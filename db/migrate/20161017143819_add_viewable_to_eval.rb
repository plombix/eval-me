class AddViewableToEval < ActiveRecord::Migration[5.0]
  def change
    add_column :evals, :viewable, :boolean
  end
end
