class Visite < ApplicationRecord
  belongs_to :patient
  has_attachments :images
end
