class Encuestum < ApplicationRecord
	has_many :encuesta1s, dependent: :destroy

	before_save do
	  self.p2_25.gsub!(/[\[\]\"]/, "") if attribute_present?("p2_25")
	  self.p2_26.gsub!(/[\[\]\"]/, "") if attribute_present?("p2_26")
	  self.p4_38_1.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_1")
	  self.p4_38_2.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_2")
	  self.p4_38_3.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_3")
	  self.p4_38_4.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_4")
	  self.p4_38_5.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_5")
	  self.p4_38_6.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_6")
	  self.p4_38_7.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_7")
	  self.p4_38_8.gsub!(/[\[\]\"]/, "") if attribute_present?("p4_38_8")
	end
end
