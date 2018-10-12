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
	  self.p7_65_1.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_1")
	  self.p7_68_1.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_1")
	  self.p7_65_2.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_2")
	  self.p7_68_2.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_2")
	  self.p7_65_3.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_3")
	  self.p7_68_3.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_3")
	  self.p7_65_4.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_4")
	  self.p7_68_4.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_4")
	  self.p7_65_5.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_5")
	  self.p7_68_5.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_5")
	  self.p7_65_6.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_6")
	  self.p7_68_6.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_6")
	  self.p7_65_7.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_7")
	  self.p7_68_7.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_7")
	  self.p7_65_8.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_65_8")
	  self.p7_68_8.gsub!(/[\[\]\"]/, "") if attribute_present?("p7_68_8")
	end
end
