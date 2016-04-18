class Trend < ActiveRecord::Base
	has_many :survey_reponses
	has_many :questions
end
