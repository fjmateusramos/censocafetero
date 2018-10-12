class Encuestum < ApplicationRecord
	has_many :encuesta1s, dependent: :destroy

	before_save do
	  self.p2_25.gsub!(/[\[\]\"]/, "") if attribute_present?("p2_25")
	  self.p2_26.gsub!(/[\[\]\"]/, "") if attribute_present?("p2_26")
	end
end
