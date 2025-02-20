# frozen_string_literal: true

# This migration comes from audiences (originally 20231205140046)
class RemoveSerializedUsersFromCriterion < ActiveRecord::Migration[6.0]
  def change
    remove_column :audiences_criterions, :users, :json
  end
end
