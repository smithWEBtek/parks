class Park < ApplicationRecord
  has_many :parks_states
  has_many :states, through: :parks_states
  has_many :reviews
end
