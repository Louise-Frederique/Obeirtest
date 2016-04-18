class AddSurveyReponseIdToReponses < ActiveRecord::Migration
  def change
    add_reference :reponses, :survey_reponse, index: true, foreign_key: true
  end
end
