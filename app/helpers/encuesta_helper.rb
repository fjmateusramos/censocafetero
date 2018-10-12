module EncuestaHelper
	def checked(area)
  		@encuestum.p2_25.nil? ? false : @encuestum.p2_25.match(area)
  		@encuestum.p2_26.nil? ? false : @encuestum.p2_26.match(area)
	end
end
