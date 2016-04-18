class CreateReponses < ActiveRecord::Migration
  def change
    create_table :reponses do |t|
      t.references :choice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
