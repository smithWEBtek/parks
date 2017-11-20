class State < ApplicationRecord
  has_many :parks_states
  has_many :parks, through: :parks_states
end
