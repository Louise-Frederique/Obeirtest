class Choice < ActiveRecord::Base
	belongs_to :question
	has_many :reponses
end
