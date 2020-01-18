class Patient < ApplicationRecord
  has_many :visites
  has_attachment  :ordonnance

  def full_name
    "#{self.nom.upcase} #{self.prenom}"
  end
end
