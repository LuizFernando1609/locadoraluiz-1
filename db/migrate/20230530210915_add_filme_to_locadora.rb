class AddFilmeToLocadora < ActiveRecord::Migration[7.0]
  def change
    add_reference :locadoras, :filme, null: false, foreign_key: true
  end
end
