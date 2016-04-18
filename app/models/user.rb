class User < ActiveRecord::Base
	has_many :survey_reponses
end
