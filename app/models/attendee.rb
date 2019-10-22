class Attendee < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
