class OfertaLaboral < ApplicationRecord
    belongs_to :user
    has_many :postulacions
    has_many_attached :images
end
