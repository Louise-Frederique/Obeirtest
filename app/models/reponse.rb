class Reponse < ActiveRecord::Base
  belongs_to :choice
  belongs_to :survey_reponse
end
