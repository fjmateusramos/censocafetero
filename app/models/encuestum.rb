class Encuestum < ApplicationRecord
	has_many :encuesta1s, dependent: :destroy
end
