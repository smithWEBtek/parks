class CreateParksStates < ActiveRecord::Migration[5.1]
  def change
    create_join_table :parks, :states
  end
end
