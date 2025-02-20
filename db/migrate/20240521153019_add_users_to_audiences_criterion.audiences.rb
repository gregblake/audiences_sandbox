# frozen_string_literal: true

# This migration comes from audiences (originally 20231115204932)
class AddUsersToAudiencesCriterion < ActiveRecord::Migration[6.0]
  def change
    add_column :audiences_criterions, :users, :json
    add_column :audiences_criterions, :refreshed_at, :datetime
  end
end
