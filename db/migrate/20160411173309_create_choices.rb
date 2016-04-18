class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.foreign_key :question_id
      t.string :description

      t.timestamps null: false
    end
  end
end
