class Survey < ActiveRecord::Base
	has_many :questions
	has_many :survey_reponses
end
