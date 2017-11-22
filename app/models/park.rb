class Park < ApplicationRecord
  has_many :parks_states
  has_many :states, through: :parks_states
  has_many :reviews

  def self.by_state(state)
    if State.exists?(abbreviation: state)
      self
      .joins(:states)
      .where(states: { abbreviation: state })
    else
      self.all
    end
  end
end
