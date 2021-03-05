class Language < ApplicationRecord
  has_many :learns
  belongs_to :user
end
