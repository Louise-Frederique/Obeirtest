class AddWeightToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :weight, :integer
  end
end
