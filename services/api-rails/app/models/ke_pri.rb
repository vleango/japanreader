class KePri < ApplicationRecord

  belongs_to :k_ele

  validates :k_ele, :text, presence: true

end
