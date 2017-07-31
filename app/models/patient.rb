class Patient < ApplicationRecord
  has_many :visites
  has_attachment  :ordonnance
end
