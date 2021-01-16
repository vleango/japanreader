class Gloss < ApplicationRecord

  belongs_to :sense

  validates :sense, :text, presence: true

end
