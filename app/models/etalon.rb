class Etalon < ApplicationRecord
  belongs_to :marque
  has_many :sondes
  
  def liste_etalons_mis_en_forme
	"#{modele} n°#{serie}"
  end
end
