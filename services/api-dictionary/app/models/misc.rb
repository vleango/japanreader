class Misc < ApplicationRecord

  belongs_to :sense

  validates :sense, :text, presence: true

end
