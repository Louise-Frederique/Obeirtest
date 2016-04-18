class CreateSurveyReponses < ActiveRecord::Migration
  def change
    create_table :survey_reponses do |t|
      t.references :trend, index: true, foreign_key: true
      t.integer :total
      t.references :user, index: true, foreign_key: true
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
