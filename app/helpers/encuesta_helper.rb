module EncuestaHelper
	
	def checked(area1)
  		@encuestum.p2_26.nil? ? false : @encuestum.p2_26.match(area1)
  		@encuestum.p2_25.nil? ? false : @encuestum.p2_25.match(area1)
  		@encuestum.p4_38_1.nil? ? false : @encuestum.p4_38_1.match(area1)
  		@encuestum.p4_38_2.nil? ? false : @encuestum.p4_38_2.match(area1)
  		@encuestum.p4_38_3.nil? ? false : @encuestum.p4_38_3.match(area1)
  		@encuestum.p4_38_4.nil? ? false : @encuestum.p4_38_4.match(area1)
  		@encuestum.p4_38_5.nil? ? false : @encuestum.p4_38_5.match(area1)
  		@encuestum.p4_38_6.nil? ? false : @encuestum.p4_38_6.match(area1)
  		@encuestum.p4_38_7.nil? ? false : @encuestum.p4_38_7.match(area1)
  		@encuestum.p4_38_8.nil? ? false : @encuestum.p4_38_8.match(area1)
	end


end
