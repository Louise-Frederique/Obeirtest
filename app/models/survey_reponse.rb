class SurveyReponse < ActiveRecord::Base
  belongs_to :trend
  belongs_to :user
  belongs_to :survey
  has_many :reponses
end
