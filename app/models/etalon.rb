class Etalon < ApplicationRecord
  belongs_to :marque
  has_many :sondes
  
  def liste_etalons_pour_select
	"#{modele} n°#{serie}"
  end
end
