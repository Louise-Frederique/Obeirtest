class Question < ActiveRecord::Base
	belongs_to :survey
	has_many :choices
	belongs_to :trend

	validates :title, presence: true
	validates :survey, presence: true
end
